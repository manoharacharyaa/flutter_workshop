import React from "react";
import "./App.css";

const App = () => {
  return (
    <div>
      <Header
        name="Manohar Acharya"
        title="Mobile Developer | Flutter Developer | Tech Enthusiast"
      />
      <Section id="about" title="About Me">
        <p>
          Hello! I'm Manohar Acharya, a passionate mobile developer specializing
          in Flutter and cross-platform app development.
        </p>
      </Section>
      <Section id="skills" title="Skills">
        <ul>
          {["Flutter", "Dart", "Firebase", "REST APIs"].map((skill, index) => (
            <li key={index}>{skill}</li>
          ))}
        </ul>
      </Section>
      <Section id="projects" title="Projects">
        {[
          {
            title: "Project 1",
            description: "Showcases my skills in Flutter and Dart.",
          },
          {
            title: "Project 2",
            description:
              "Demonstrates my ability to build cross-platform apps.",
          },
          {
            title: "Project 3",
            description: "Highlights my expertise in Firebase integration.",
          },
        ].map((project, index) => (
          <Card
            key={index}
            title={project.title}
            description={project.description}
          />
        ))}
      </Section>
      <Section id="contact" title="Contact">
        <p>Email: manohar.acharya@example.com</p>
        <p>
          LinkedIn:{" "}
          <a href="https://linkedin.com/in/manohar-acharya">
            linkedin.com/in/manohar-acharya
          </a>
        </p>
      </Section>
    </div>
  );
};

export default App;

const Header = ({ name, title }) => (
  <header>
    <h1>{name}</h1>
    <p>{title}</p>
  </header>
);

const Section = ({ id, title, children }) => (
  <section id={id}>
    <h2>{title}</h2>
    {children}
  </section>
);

const Card = ({ title, description }) => (
  <div className="card">
    <h3>{title}</h3>
    <p>{description}</p>
  </div>
);
