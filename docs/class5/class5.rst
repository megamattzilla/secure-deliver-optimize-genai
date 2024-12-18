Class 5: Secure, Deliver and Optimize GenAI ChatBot
===================================================

..  image:: ./_static/mission5.png


..  image:: ./_static/class5-1.png


1 - Fundamental about F5 AI Gateway
-----------------------------------

- What is AI GW Core?

- What is AI GW Processor?

- Configuration stanza


2 - Deploy F5 AI Gateway
------------------------

.. code-block:: bash

   cd ~/ai-gateway/aigw-v0.1/charts/aigw

.. code-block:: bash

   kubectl create ns ai-gateway

.. code-block:: bash
   
   kubectl -n ai-gateway create secret docker-registry f5-registry-secret \
   --docker-server=private-registry.nginx.com \
   --docker-username=eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCIsImtpZCI6InYxIiwiamt1IjoiaHR0cHM6Ly9wcm9kdWN0LmFwaXMuZjUuY29tL2VlL3YxL2tleXMvandrcyJ9.eyJzdWIiOiJGTkktODc3NGE1NzYtYzRmMC00NjdmLTlkZmQtOTFkYTAxNmQyYTAxIiwiaWF0IjoxNzI5NjE2NzQyLCJpc3MiOiJGNSBJbmMuIiwiYXVkIjoidXJuOmY1OnRlZW0iLCJqdGkiOiJkZWVkOWJiMC05MDk3LTExZWYtOWE5Ni0zYmRiNjE5YzM2ZTciLCJmNV9vcmRlcl90eXBlIjoicGFpZCIsImY1X3NhdCI6MTgyNDA3NjgwMH0.mTIkAvGNcqYFRHURnFpm0B_E6DJKoQ8IZCNTS7DV9-iTUdc-tU99CPRjdlF88sd7QhI8ligoQouU979JgLEDLLIHymUTWs3v96APLR7EaFaRhO0BlmKIDGf0cGZWOvSlvUi2Z_75Xbjo5yMy8Kzr3YBznqRtUvF2exBdV94iRAoq3q61k_emOHR8-jtoheHPXBAUU3mQyQLpsj55JRIWbY3c_RKmxLTlM3dGXpUXkyWJHLpUnTS_OU3HGjL9vfCbHrtM0zSPAvhrsWUMDaO6BXUHlFQcwgEyELjbemKNvXK71IjDXR-h_PAaYOVjhiTszQ0_m7a9KMLz1fLHCXm31zdAFZyMChD75SXNGlqB0AhRfmgRQw5bCw7oMVwbC5eZtUMXZMH_sshKNB5NI9weLF8LOzFEe7MoGm2MoaUbxP9Sy7lEE3rqkJgu_tZVvWZwn2XjMQYB0cqGtPnwkPVti10zLLRlucm5yUWNyo-zcimCUl05jqzI-qCK3-G70K2kolqS_7WlXe1kQ5czS4-BLwN4IupS0cCn47qdwkRAVgwLCdN5NJAxkzSZaevequ6aCx-tA0GKg1BnFdMUJeFGeoOSQ5dnCvL2sSofhiok9rJXAzAgXK6QB0ZubsmQOdcHYZ85opSxu-DdOL4fsUcY5dl1uAnGTKoq4-A0uDiuVtU \
   --docker-password=none   

.. code-block:: bash

   kubectl -n ai-gateway create secret generic f5-license \ 
   --from-literal=license=eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCIsImtpZCI6InYxIiwiamt1IjoiaHR0cHM6Ly9wcm9kdWN0LmFwaXMuZjUuY29tL2VlL3YxL2tleXMvandrcyJ9.eyJzdWIiOiJGTkktODc3NGE1NzYtYzRmMC00NjdmLTlkZmQtOTFkYTAxNmQyYTAxIiwiaWF0IjoxNzI5NjE2NzQyLCJpc3MiOiJGNSBJbmMuIiwiYXVkIjoidXJuOmY1OnRlZW0iLCJqdGkiOiJkZWVkOWJiMC05MDk3LTExZWYtOWE5Ni0zYmRiNjE5YzM2ZTciLCJmNV9vcmRlcl90eXBlIjoicGFpZCIsImY1X3NhdCI6MTgyNDA3NjgwMH0.mTIkAvGNcqYFRHURnFpm0B_E6DJKoQ8IZCNTS7DV9-iTUdc-tU99CPRjdlF88sd7QhI8ligoQouU979JgLEDLLIHymUTWs3v96APLR7EaFaRhO0BlmKIDGf0cGZWOvSlvUi2Z_75Xbjo5yMy8Kzr3YBznqRtUvF2exBdV94iRAoq3q61k_emOHR8-jtoheHPXBAUU3mQyQLpsj55JRIWbY3c_RKmxLTlM3dGXpUXkyWJHLpUnTS_OU3HGjL9vfCbHrtM0zSPAvhrsWUMDaO6BXUHlFQcwgEyELjbemKNvXK71IjDXR-h_PAaYOVjhiTszQ0_m7a9KMLz1fLHCXm31zdAFZyMChD75SXNGlqB0AhRfmgRQw5bCw7oMVwbC5eZtUMXZMH_sshKNB5NI9weLF8LOzFEe7MoGm2MoaUbxP9Sy7lEE3rqkJgu_tZVvWZwn2XjMQYB0cqGtPnwkPVti10zLLRlucm5yUWNyo-zcimCUl05jqzI-qCK3-G70K2kolqS_7WlXe1kQ5czS4-BLwN4IupS0cCn47qdwkRAVgwLCdN5NJAxkzSZaevequ6aCx-tA0GKg1BnFdMUJeFGeoOSQ5dnCvL2sSofhiok9rJXAzAgXK6QB0ZubsmQOdcHYZ85opSxu-DdOL4fsUcY5dl1uAnGTKoq4-A0uDiuVtU 

..  image:: ./_static/class5-2.png

Install AIGW Core helm charts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. code-block:: bash

   helm -n ai-gateway install aigw -f values-ai-gateway-base.yaml . 

.. Note:: 
   "values-ai-gateway-base.yaml" with basic aigw.yaml configuration. "values-ai-gateway.yaml" with aigw.yaml configuration for various policy.

.. code-block:: bash

   kubectl -n ai-gateway get po,svc

.. code-block:: bash

   kubectl -n ai-gateway logs -l app.kubernetes.io/instance=aigw
   
AIGW Core is running and listening for traffic.

..  image:: ./_static/class5-3.png


3 - Deploy AI GW User Interface.
--------------------------------

.. attention:: 
   This AI GW UI is an interim UI for AI GW. This method will change in future.

.. code-block:: bash

   cd ~/ai-gateway/aigw-v0.1/aigw-ui-manifest

.. code-block:: bash

   kubectl -n ai-gateway apply -f aigw-config.yaml

.. code-block:: bash

   kubectl -n ai-gateway apply -f ui-deploy.yaml

.. code-block:: bash

   kubectl -n ai-gateway get po,svc

AIGW UI is running.


..  image:: ./_static/class5-4.png


Create Nginx Ingress to expose aigw core, aigw configuration service and aigw UI to outside of k8s.


.. code-block:: bash

   cd ~/ai-gateway/nginx-ingress-aigw

.. code-block:: bash

   kubectl -n ai-gateway apply -f aigw-ingress.yaml

.. code-block:: bash

   kubectl -n ai-gateway apply -f aigw-config-ingress.yaml

.. code-block:: bash

   kubectl -n ai-gateway apply -f aigw-ui-ingress.yaml

.. code-block:: bash

   kubectl -n ai-gateway get ingress

..  image:: ./_static/class5-5.png

Confirm you can access the AI GW UI from Chrome browser

..  image:: ./_static/class5-6.png



4 - Deploy F5 AI Processor
--------------------------

Deploy NGINX ingress controller for AI Processor K8S.

.. code-block:: bash

   cd ~/ai-processor/nginx-ingress

.. code-block:: bash

   kubectl create ns nginx-ingress

.. code-block:: bash

   helm -n nginx-ingress install nginxic \
   oci://ghcr.io/nginxinc/charts/nginx-ingress -f values.yaml --version 1.4.0

.. code-block:: bash

   kubectl -n nginx-ingress get po,svc

..  image:: ./_static/class5-7.png

.. Note:: 
   Ensure all pods are in **Running** and **READY** state where all pods count ready before proceed.


Install AIGW processor helm chart
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   cd ~/ai-processor/aigw-v0.1/charts/aigw

.. code-block:: bash

   kubectl create ns ai-gateway

.. code-block:: bash

   helm -n ai-gateway install ai-processor -f values-ai-processor.yaml .

.. code-block:: bash

   kubectl -n ai-gateway get po,svc

..  image:: ./_static/class5-8.png


.. Note:: 
   Ensure all pods are in **Running** and **READY** state where all pods count ready before proceed.


Create nginx ingress resource for aigw processor to expose processor service to outside of K8S.

.. code-block:: bash

   cd ~/ai-processor/

.. code-block:: bash

   kubectl -n ai-gateway apply -f aiprocessor-ingress.yaml

.. code-block:: bash

   kubectl -n ai-gateway get ingress


..  image:: ./_static/class5-9.png


5 - Update LLM Orchestrator to point to AI Gateway
--------------------------------------------------


6 - Deploy Simply-Chat Apps
---------------------------


7 - Update AI GW Policy
-----------------------

8 - Use Cases
--------------
- Model routing
  
- Prevention PII leakage

- Prompt Injection

- System Prompt Guardrail / enforcement

..  image:: ./_static/mission5-1.png


.. toctree::
   :maxdepth: 1
   :glob:

