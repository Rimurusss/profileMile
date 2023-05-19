<template>
    <div>
      <nav class="navbar">
        <ul>
          <li>
            <nuxt-link to="/" :class="{ active: $route.path === '/' }">Home</nuxt-link>
          </li>
          <li>
            <nuxt-link to="/about" :class="{ active: $route.path === '/about' }">About</nuxt-link>
          </li>
          <li>
            <nuxt-link to="/projects" :class="{ active: $route.path === '/projects' }">Projects</nuxt-link>
          </li>
          <li>
            <nuxt-link to="/contact" :class="{ active: $route.path === '/contact' }">Contact</nuxt-link>
          </li>
        </ul>
      </nav>
  
      <nuxt />
    </div>
  </template>
  <style>
  .navbar {
    background-color: #333;
    padding: 10px;
    font-size: 24px;
    position: relative;
  }
  
  ul {
    list-style-type: none;
    display: flex;
  }
  
  li {
    margin-right: 10px;
  }
  
  a {
    color: #fff;
    text-decoration: none;
    position: relative;
    padding: 8px 12px;
  }
  
  a::before {
    content: "";
    position: absolute;
    width: 100%;
    height: 2px;
    background-color: #fff;
    top: 0;
    left: 0;
    transform: scaleX(0);
    transform-origin: center;
    transition: transform 0.3s ease;
    border-radius: 5px;
  }
  
  a:hover::before {
    transform: scaleX(1);
  }
  
  a.active::before {
    transform: scaleX(1);
  }
  
  a::after {
    content: "";
    position: absolute;
    width: 100%;
    height: 15px;
    background-color: #ffb400;
    top: -10px;
    left: 0;
    transform: scaleX(0);
    transform-origin: bottom;
    transition: transform 0.3s ease;
    border-radius: 5px;
  }
  
  a:hover::after,
  a.active::after {
    transform: scaleX(1);
  }
  
  a.active {
    color: #ffb400;
  }
  
  a:hover,
  a.active {
    color: #ffb400;
  }
  </style>
  