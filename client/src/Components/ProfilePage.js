// ProfilePage.js
import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { useAuth } from '../auth'; // Adjust the import based on your file structure

const ProfilePage = () => {
  const [userProfile, setUserProfile] = useState(null);
  const { user_name } = useParams();
  const auth = useAuth(); // Using the auth context

  useEffect(() => {
    const fetchUserProfile = async () => {
      try {
        // Replace with the correct API endpoint for fetching user profile
        const response = await fetch(`http://localhost:5000/userprofile?user_name=${user_name}`);
        if (response.ok) {
          const userData = await response.json();
          setUserProfile(userData);
          console.log(userData);
        } else {
          console.error(`Failed to fetch user profile. Status: ${response.status}`);
        }
      } catch (error) {
        console.error('Error fetching user profile:', error.message);
      }
    };

    fetchUserProfile();
  }, [user_name]); // Include user_name in the dependency array to trigger a fetch when it changes

  return (
    <div style={{ textAlign: 'left', padding: '20px', position: 'relative' }}>
      {userProfile ? (
        <div>
          <img
            src={require('./Images/codeforceLogo.jpg')}
            alt="Codeforces Logo"
            style={{ transform: 'scale(0.8)', position: 'absolute', top: '0', left: '0' }}
          />
          <a href='http://localhost:3000/logout' style={{ position: 'absolute', top: '0', right: '20px' }}>Log Out</a>
          <div style={{ marginTop: '100px' }}>
            <div className="box" style={{ width: '1000px', height: '45px', border: '1px solid black', padding: '10px', margin: '10px' }}>
              <h4>
                <Link to="/home">HOME</Link>&ensp;
                <Link to="/contests">CONTEST</Link>&ensp;
                <Link to="/gym">GYM</Link>&ensp;
                <Link to="/problems">PROBLEMS</Link>&ensp;
                <Link to="/ranking">RANKING</Link>&ensp;
              </h4>
            </div>
            <div className="box" style={{ width: '1000px', height: '500px', border: '1px solid black', padding: '10px', margin: '10px' }}>
              <b>
                <h2 style={{ color: userProfile.color }}>{userProfile.color}</h2>
                <h3>{userProfile.user_name}</h3>
                <img src={require('./Images/userPhoto.jpg')} alt="Avatar" style={{ position: 'middle', width: '100px', height: '100px' }} />
                <p>Email: {userProfile.email}</p>
                <p>Current Rating: {userProfile.current_rating}</p>
                <p>Max Rating: {userProfile.max_rating}</p>
                <p>Country: {userProfile.country}</p>
                <p>Institution: {userProfile.institution}</p>
                <p style={{ color: userProfile.contribution > 0 ? 'ForestGreen' : 'red' }}>
                  <b> Contribution: {userProfile.contribution}</b>
                </p>
                <p>Problems Solved: {userProfile.problems_solved}</p>
              </b>
            </div>
          </div>
        </div>
      ) : (
        <p>Loading user profile...</p>
      )}
    </div>
  );
};

export default ProfilePage;
