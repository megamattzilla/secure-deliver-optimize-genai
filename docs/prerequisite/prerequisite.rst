Prerequisite
============

Readiness
---------
Ensure LAB ennvironment is ready and Running to execute subsequent task. 

**Blueprint**

..  image:: /_static/intro/intro-0.png

..  image:: /_static/intro/intro-1.png


.. attention:: 
   Classes depend on private registry server (Harbor Registry). Ensure its up and running before proceed.

Remote RDP to Windows10 Jumphost.

Login to a remote desktop (RDP) to access Harbor registry server to ensure services are running and you able to login.

..  image:: /_static/intro/intro-5.png

Windows10 RDP login password can be obtainsed as following

..  image:: /_static/intro/intro-6.png

Window 10 Jumphost

..  image:: /_static/intro/intro-7.png

Launch a putty session and login with the following credential.

+----------------+---------------+
| **Username**   | ubuntu        |
+----------------+---------------+
| **Password**   | HelloUDF      |
+----------------+---------------+

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



Access to Harbor Registry server with Chrome browser

+----------------+---------------+
| **Username**   | admin         |
+----------------+---------------+
| **Password**   | F5Passw0rd    |
+----------------+---------------+


..  image:: /_static/intro/intro-8.png


Sucessfully login to registry server.

..  image:: /_static/intro/intro-9.png


KASM desktop
------------
Alternatively, if you don't have access to RDP or ssh client from your laptop due to company security policy, you can use KASM desktop (via https) to do the lab.


..  image:: /_static/intro/kasm-0.png


Login to Desktop browser (Chrome) with the following credential.

+----------------+---------------+
| **Username**   | f5            |
+----------------+---------------+
| **Password**   | F5Passw0rd    |
+----------------+---------------+


..  image:: /_static/intro/kasm-1.png


Access Kasm Desktop from the bookmark as shown below.

Ensure you allow text and images copies to the clipboard.

.. Attention:: 
   You may need to refresh the chrome browser occasionally to ensure you can copy and paste content from your laptop to KASM desktop.

..  image:: /_static/intro/kasm-2.png

Please notes that KASM desktop username is different from the Desktop (Chrome) browser.


+----------------+---------------+
| **Username**   | kasm_user     |
+----------------+---------------+
| **Password**   | F5Passw0rd    |
+----------------+---------------+


..  image:: /_static/intro/kasm-3.png


KASM desktop

..  image:: /_static/intro/kasm-4.png


Windows10 Jumphost Console
--------------------------

..  image:: /_static/intro/win-0.png


Lab Setup Environment
---------------------

+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| Service                                    | FQDN / URL           | IP Address |  Remark                                                |
+============================================+======================+============+========================================================+
| Open-WebUI Service                         | open-webui.ai.local  | 10.1.1.4   |  Web-UI frontend for AI Model (Ollama)                 |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| AI Gateway Core                            | aigw.ai.local        | 10.1.1.4   | High performance reverse proxy for LLM traffic         |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| AI GW Configuration Service                | aigw-config.ai.local | 10.1.1.4   | API endpoint to configure AI Gateway                   |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| AIGW UI Service                            | aigw-ui.ai.local     | 10.1.1.4   | Web frontend for API endpoint to configure AIGW        |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| Ollama Service                             | ollama.ai.local      | 10.1.1.4   | Platform to run and host AI Model                      |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| Harbor Registry Service / Linux Jumphost   | reg.ai.local         | 10.1.1.7   | Container image registry and Linux jumphost            |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| Windows10 Jumphost                         |  NA                  | 10.1.1.8   | Windows10 Jumphost. Access via RDP from laptop         |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| Arcadia Financial Modern Apps              | arcadia.ai.local     | 10.1.1.9   | Sample Modern financial trading application            |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| Simply Chatbot                             | simply-chat.ai.local | 10.1.1.9   | Sample chatbot frontend                                |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| Langchain / LLM Orchestrator               | llm-orch.ai.local    | 10.1.1.9   | LLM Orchestrator coordinate and streamline LLM task    |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+
| Vector Database                            | vectordb.ai.local    | 10.1.1.9   | Specialize type of DB for high dimensional vector data |
+--------------------------------------------+----------------------+------------+--------------------------------------------------------+



.. toctree::
   :maxdepth: 1
   :glob:

