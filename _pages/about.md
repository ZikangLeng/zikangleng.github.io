---
permalink: /
title: "Zikang Leng"
excerpt: "Ph.D. researcher building human-centered AI and sensing systems"
author_profile: false
classes: wide
hide_title: true
redirect_from:
  - /about/
  - /about.html
---

<section class="home-hero">
  <div class="home-hero__copy">
    <span class="eyebrow">Human-centered AI · Ubiquitous computing · Multimodal sensing</span>
    <h1>I build intelligent systems that understand human behavior beyond the lab.</h1>
    <p class="home-hero__lead">I’m a Computer Science Ph.D. student at Georgia Tech, advised by <a href="https://www.cc.gatech.edu/people/thomas-ploetz">Prof. Thomas Plötz</a>. My work combines generative AI, embodied agents, and multimodal sensing to create scalable, privacy-conscious tools for understanding activity, engagement, and behavior.</p>
    <div class="home-hero__actions">
      <a class="button button--primary" href="/projects/">Explore my research</a>
      <a class="button button--secondary" href="/files/Resume.pdf">View CV</a>
    </div>
    <ul class="social-row" aria-label="Profiles and contact">
      {% if site.author.googlescholar %}<li><a href="{{ site.author.googlescholar }}" aria-label="Google Scholar" title="Google Scholar"><i class="fas fa-graduation-cap" aria-hidden="true"></i></a></li>{% endif %}
      {% if site.author.github %}<li><a href="https://github.com/{{ site.author.github }}" aria-label="GitHub" title="GitHub"><i class="fab fa-github" aria-hidden="true"></i></a></li>{% endif %}
      {% if site.author.linkedin %}<li><a href="https://www.linkedin.com/in/{{ site.author.linkedin }}" aria-label="LinkedIn" title="LinkedIn"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>{% endif %}
      {% if site.author.twitter %}<li><a href="https://twitter.com/{{ site.author.twitter }}" aria-label="Twitter" title="Twitter"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>{% endif %}
      {% if site.author.email %}<li><a href="mailto:{{ site.author.email }}" aria-label="Email" title="Email"><i class="fas fa-envelope" aria-hidden="true"></i></a></li>{% endif %}
    </ul>
  </div>
  <div class="home-hero__portrait-wrap">
    <div class="home-hero__orbit home-hero__orbit--one"></div>
    <div class="home-hero__orbit home-hero__orbit--two"></div>
    <img class="home-hero__portrait" src="/images/Zikang%20Leng_square.jpg" alt="Zikang Leng">
    <div class="home-hero__note"><span class="status-dot"></span><span>NSF Graduate Research Fellow<br><strong>Georgia Tech</strong></span></div>
  </div>
</section>

<section class="research-intro section-block">
  <div><span class="section-kicker">Research vision</span><h2>From simulated worlds to real human moments</h2></div>
  <p>I develop methods that make human-centered sensing more capable and more practical: generating virtual sensor data when real data is scarce, learning from physiological and behavioral signals, and designing systems that work across people, environments, and modalities.</p>
</section>

<section class="research-pillars" aria-label="Research areas">
  <article class="pillar-card"><span class="pillar-card__number">01</span><h3>Generative sensing</h3><p>LLMs and embodied agents generate diverse, privacy-preserving motion and ambient sensor data for human activity recognition.</p><div class="tag-row"><span>LLMs</span><span>Embodied AI</span><span>Simulation</span></div></article>
  <article class="pillar-card"><span class="pillar-card__number">02</span><h3>Multimodal understanding</h3><p>Wearable, physiological, visual, and interaction signals reveal engagement and behavior in realistic settings.</p><div class="tag-row"><span>Wearables</span><span>Physiology</span><span>HCI</span></div></article>
  <article class="pillar-card"><span class="pillar-card__number">03</span><h3>Inclusive human-centered AI</h3><p>Data and models designed around real people—including accessibility and health contexts—rather than idealized benchmarks.</p><div class="tag-row"><span>Accessibility</span><span>Health</span><span>Responsible AI</span></div></article>
</section>

<section class="section-block featured-work">
  <div class="section-heading"><div><span class="section-kicker">Featured work</span><h2>Current projects</h2></div><a class="text-link" href="/projects/">View all projects <span aria-hidden="true">→</span></a></div>
  <div class="featured-grid">
    <article class="featured-card">
      <div class="featured-card__image featured-card__image--contain"><img src="/images/edugage-setup.jpg" alt="EduGage study setup: a participant wearing head, ear, wrist, finger, and chest sensors at the video-learning workstation"></div>
      <div class="featured-card__body"><div class="project-meta"><span>Multimodal sensing</span><strong>IMWUT 2026</strong></div><h3>EduGage</h3><p>Estimating momentary engagement during self-guided video learning using synchronized wearable, physiological, eye-tracking, and behavioral signals.</p><a href="https://arxiv.org/abs/2605.01238">Read the paper <span aria-hidden="true">↗</span></a></div>
    </article>
    <article class="featured-card">
      <div class="featured-card__image featured-card__image--contain"><img src="/images/agentsense.png" alt="AgentSense pipeline: an LLM generates personas and routines that embodied agents execute in sensor-instrumented simulated homes"></div>
      <div class="featured-card__body"><div class="project-meta"><span>Embodied AI</span><strong>AAAI 2026</strong></div><h3>AgentSense</h3><p>LLM-guided agents live out diverse routines in simulated smart homes, producing scalable ambient sensor data without collecting it from people.</p><a href="https://arxiv.org/abs/2506.11773">Read the paper <span aria-hidden="true">↗</span></a></div>
    </article>
    <article class="featured-card featured-card--wide">
      <div class="featured-card__image featured-card__image--contain"><img src="/images/imugpt2.png" alt="IMUGPT 2.0 pipeline from language prompts to virtual inertial sensor data"></div>
      <div class="featured-card__body"><div class="project-meta"><span>Virtual sensor data</span><strong>IMWUT 2024</strong></div><h3>IMUGPT 2.0</h3><p>Turning natural-language activity descriptions into diverse virtual IMU signals through motion synthesis and cross-modality transfer.</p><a href="https://dl.acm.org/doi/10.1145/3678545">Read the paper <span aria-hidden="true">↗</span></a><a href="https://github.com/ZikangLeng/IMUGPT">Code <span aria-hidden="true">↗</span></a></div>
    </article>
  </div>
</section>

<section class="news-panel section-block">
  <div class="section-heading"><div><span class="section-kicker">Latest</span><h2>News</h2></div><a class="text-link" href="/news/">All news <span aria-hidden="true">→</span></a></div>
  <div class="news-list">
    <a href="https://arxiv.org/abs/2605.01238"><time>2026</time><span><strong>EduGage accepted to IMWUT</strong> — multimodal sensing for momentary engagement in self-guided learning.</span><i aria-hidden="true">↗</i></a>
    <a href="https://behaviorai.ai"><time>2026</time><span><strong>Started as a Machine Learning Engineer Intern at Behavior AI</strong>.</span><i aria-hidden="true">↗</i></a>
    <a href="https://arxiv.org/abs/2506.11773"><time>2026</time><span><strong>AgentSense published at AAAI</strong> — virtual sensor data generation with LLM-guided agents.</span><i aria-hidden="true">↗</i></a>
  </div>
</section>

<section class="contact-strip"><div><span class="section-kicker">Let’s connect</span><h2>Interested in sensing, simulation, or human-centered AI?</h2></div><a class="button button--primary" href="mailto:zleng7@gatech.edu">Get in touch</a></section>
