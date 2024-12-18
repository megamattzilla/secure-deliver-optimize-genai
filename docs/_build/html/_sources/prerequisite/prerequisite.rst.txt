Prerequsite
===========


Objective:
----------
Ensure LAB ennvironment is ready and Running to execute subsequent task. 

**Blueprint**

..  image:: /_static/intro/intro-1.png


.. attention:: 
   Classes depend on private registry server (Harbor Registry). Ensure its up and running before proceed.

Login to Linux Jumphost

..  image:: /_static/intro/intro-2.png

You should be able to get the following prompt on "reg" server.

..  image:: /_static/intro/intro-3.png

Run the folowing command to ensure registry service active and running.

  .. code-block:: bash

     sudo systemctl status harbor 

Harbor registry should shown active (running)

..  image:: /_static/intro/intro-4.png

.. Note:: 
   Only run the following if harbor not or partially running.

  .. code-block:: bash

     sudo systemctl stop harbor

     sudo systemctl start harbor

     sudo systemctl status harbor

Login to a remote desktop (RDP) to access registry server to ensure you able to login.

..  image:: /_static/intro/intro-5.png

Windows10 RDP login password can be obtainsed as following

..  image:: /_static/intro/intro-6.png

Window 10 Jumphost

..  image:: /_static/intro/intro-7.png


Access to Harbor Registry server with Chrome browser

+----------------+---------------+
| **Username**   | admin         |
+----------------+---------------+
| **Password**   | F5Password    |
+----------------+---------------+


..  image:: /_static/intro/intro-8.png


Sucessfully login to registry server.

..  image:: /_static/intro/intro-9.png



Environment:
------------

+-------------------------------+--------------------------+------------------+
| Service                       | FQDN / URL               |  IP Address      |
+===============================+==========================+==================+
| Open-WebUI Service            | open-webui.ai.local      |  10.1.1.4        |
+-------------------------------+--------------------------+------------------+
| AI Gateway Core               | aigw.ai.local            |  10.1.1.4        |
+-------------------------------+--------------------------+------------------+
| AI GW Configuration Service   | aigw-config.ai.local     |  10.1.1.4        |
+-------------------------------+--------------------------+------------------+
| AIGW UI Service               | aigw-ui.ai.local         |  10.1.1.4        |
+-------------------------------+--------------------------+------------------+
| Ollama Service                | ollama.ai.local          |  10.1.1.4        |
+-------------------------------+--------------------------+------------------+
| Registry Service / Jumphost   | reg.ai.local             |  10.1.1.7        |
+-------------------------------+--------------------------+------------------+
| Arcadia Financial Modern Apps | arcadia.ai.local         |  10.1.1.9        |
+-------------------------------+--------------------------+------------------+
| Simply Chatbot                | simply-chat.ai.local     |  10.1.1.9        |
+-------------------------------+--------------------------+------------------+
| Langchain / LLM Orchestrator  | llm-orch.ai.local        |  10.1.1.9        |
+-------------------------------+--------------------------+------------------+
| Vector Database               | vectordb.ai.local        |  10.1.1.9        |
+-------------------------------+--------------------------+------------------+



.. toctree::
   :maxdepth: 1
   :glob:

