.. _Setting Up Certificates:

#######################
Setting Up Certificates
#######################

This section describes how to create and manage certificates for your course.

.. contents::
   :local:
   :depth: 1

For more information about certificates, see these additional topics.

* :ref:`Obtaining Certificate Data<Reporting Certificate Data>`
* :ref:`Ending a Course<Checking Student Progress and Issuing Certificates>`

.. only:: Open_edX

  For information about awarding badges for your course, see :ref:`Enable or
  Disable Badges for Your Course<Enable Badges in Course>`.

.. _Overview:

***********
Overview
***********

Using Studio, you create and manage the certificates that learners can earn in
your course.

.. only:: Open_edX

  The design of certificates for your course, including your institution's
  logo, are configured on your instance of Open edX. For more information, see
  :ref:`installation:Enable Certificates` in *Installing, Configuring, and
  Running the Open edX Platform*.

.. only:: Partners

  The design of certificates for your course, including your institution's
  logo, are configured by edX. Contact your partner manager for
  more information.

.. The course start date limitation is not published for partners at this time.
.. Confirmed March 9, 2017 that there's no hard requirement for having activated
.. certs before edX course starts. Although there is a procedural requirement for
.. announcing activated certs, courses are able to start if they have
.. deactivated certs.

.. only:: Open_edX

    .. note:: If your course is configured to issue certificates, you cannot
       start the course until the required certificates are
       :ref:`activated<Activate a Certificate>`.

       For information about starting the course, see :ref:`Guidelines for
       Start and End Dates`.

    ===================
    Enable Certificates
    ===================

    Before you can create certificates, you must enable certificates for your
    course.

    #. From the **Settings** menu, select **Advanced Settings**.

    #. In the **Certificate Web/HTML View Enabled** field, enter ``true``.

    #. At the bottom of the page, select **Save Changes**.

.. Confirmed March 9, 2017: On edx.org, the Certificate Web/HTML View Enabled
.. setting is true by default, so the "Enable" procedure isn't necessary for
.. partners.


.. _Create a Certificate:

*********************
Create a Certificate
*********************

To create a certificate for your course, follow these steps.

#. In Studio, from the **Settings** menu, select **Certificates**.

#. On the Certificates page, select **Add your first certificate** or **Add a
   new certificate**.

#. Optionally, specify an alternative course title to use on the certificate
   in the **Course Title Override** field.

   You might want to use a different title on your course certificates if, for
   example, the official course name is too long to fit on the certificate.

   To specify an alternative course number, see `Set a Course Number
   Override`_.

#. Add a signatory for each person associated with the course or organization
   whose name and title you want to appear on the certificate. You must specify
   at least one signatory. You can add as many signatories as needed.

.. only:: Partners

   5. For verified certificates, you must upload an image file showing the
      signature of each signatory.

      The image file must be a transparent .png file, 450px by 150px.

.. only:: Open_edX

   5. Optionally, upload an image file showing the signature of each signatory.

      The image file must be a transparent .png file, 450px by 150px.


6. When you have finished creating your certificate, select **Create**.

   You can :ref:`preview the certificate<Preview a Certificate>` to see how it
   will appear to a learner taking the course in the selected mode.

   Your course certificate is not available for issuing to learners until it is
   :ref:`activated<Activate a Certificate>`.


.. _Edit a Certificate:

********************
Edit a Certificate
********************

You can edit certificates before and after they are activated.

Only course team members with the Staff or Admin role can edit activated
certificates.

.. caution::
  As a best practice, do not make changes to certificates in a running course
  if it is possible that certificates have already been issued to learners,
  because different learners might be awarded certificates with different
  details for the same course.

  If you must edit an activated certificate, you should :ref:`deactivate
  <Deactivate a Certificate>` the certificate before making changes to it.

To edit a certificate, follow these steps.

#. In Studio, from the **Settings** menu, select **Certificates**.

#. On the Certificates page, at the top of the certificate form, select the
   **Edit** icon.

#. When you have finished editing the certificate, select **Save**.

   After you save your changes, you can :ref:`preview the certificate<Preview
   a Certificate>` to make sure it appears as you want it to. You then need to
   :ref:`activate the certificate<Activate a Certificate>` before certificates
   can be issued.


.. _Set a Course Number Override:

******************************
Set a Course Number Override
******************************

Optionally, you can specify an alternative course number to use on the
certificate.

You might want to use a different number on your course certificates if, for
example, the official course number is meaningful only within your institution.

#. In Studio, select **Settings**, and then **Advanced Settings**.

#. Locate the **Course Number Display String** field. This field contains the
   course number you set to override the official course number on
   certificates.

#. Between quotation marks (``" "``), enter the course number you want
   displayed on certificates.

#. Select **Save Changes**.

   A message lets you know whether your changes were saved successfully.


.. _Delete a Certificate:

***********************************
Delete a Certificate
***********************************

You can delete a certificate that is not activated.

.. caution::
  Do not delete a certificate after the course has started. A learner who has
  already earned a certificate will no longer be able to access it.

To delete a certificate, follow these steps.

#. In Studio, from the **Settings** menu, select **Certificates**.

#. On the **Certificates** page, at the top of the certificate form, select the
   "Delete" icon.

   .. image:: ../../../../shared/images/CertificateDeleteIcon.png
    :width: 500
    :alt: Top portion of the certificate form showing the delete icon at the
        top.

#. In the confirmation dialog, confirm that you want to delete the certificate.



.. _Preview a Certificate:

************************
Preview Certificates
************************

After you have finished editing your certificate, you can preview a certificate
for verification purposes. You select from the available course modes (such as
"verified") to see how a certificate will appear to a learner taking the course
in the selected mode.

#. In Studio, from the **Settings** menu, select **Certificates**.

#. On the Certificates page, select the course mode of the certificate you
   want to preview, then click **Preview Certificate**.

   You see the web view for the certificate, as a learner in the selected
   course mode would see it.

After previewing the certificate, you can :ref:`edit the certificate<Edit a
Certificate>` further or :ref:`activate your certificate<Activate a
Certificate>`.


.. _Activate a Certificate:

***********************
Activate a Certificate
***********************

When you have verified your certificate, a course team member with the Admin or
Staff role can activate the certificate.

.. note::
  Course team members without the Admin or Staff role cannot activate a
  certificate.

To activate a certificate, follow these steps.

#. Make sure that you have the Admin or Staff role for the course. For more
   information, see :ref:`Course_Staffing`.

#. In Studio, on the **Settings** menu, select **Certificates**.

#. On the **Certificates** page, select **Activate**.

After certificates are activated, learners in your course who attain a passing
grade or otherwise qualify receive certificates.


.. _Deactivate a Certificate:

********************************************
Deactivate a Certificate
********************************************

In some situations, after you have activated a certificate, you might need to
deactivate the certificate to make changes.

As a best practice, do not make changes to certificates in a running course if
the course has already issued certificates to learners.

A course team member with the Admin or Staff role can deactivate the
certificate.

.. note::
  Course team members without the Admin or Staff role cannot deactivate a
  certificate.

To deactivate a certificate, follow these steps.

#. Make sure that you have the Admin or Staff role for the course. For more
   information, see :ref:`Course_Staffing`.

#. In Studio, on the **Settings** menu, select **Certificates**.

#. On the **Certificates** page, select **Deactivate**.

The certificate is no longer active and the course team can edit it. No new
certificates can be issued to learners while it is deactivated. Learners who
have already been issued certificates can continue to access them.


.. _Manage Certificate Images:

**************************
Manage Certificate Images
**************************

When you add signatory image files to a certificate, the uploaded files are
listed in Studio on the **Files & Uploads** page.

When you delete a certificate, images that you uploaded for use with that
certificate are also deleted. However, if you edit a certificate and replace
images, the unused image files remain on the **Files & Uploads** page. You can
manually remove unused images. For information, see
:ref:`Delete a File`.


.. only:: Open_edX

 .. _Enable Badges in Course:

 *****************************************
 Enable or Disable Badges for Your Course
 *****************************************

 Badges provide a way for learners to share their course achievements. For
 courses that have course completion badges enabled, learners receive a badge
 at the same time as they receive a course certificate, and have the option of
 sharing their badges to a badging site such as Mozilla Backpack.

 The Open edX platform supports Open Badges, an open standard developed by the
 Mozilla Foundation. For more information about Open Badges, see the `Open
 Badges web site <http://openbadges.org/>`_.

 If badging is enabled for your platform, course completion badges are enabled
 by default for your course. If you are unsure whether badging is enabled for
 your platform, or if you need help with configuring your course badges,
 contact your platform administrator.

 To stop issuing badges in your course, follow these steps.

 #. In Studio, from the **Settings** menu, select **Advanced Settings**.

 #. Locate the **Issue Open Badges** policy key. The default value is ``True``.

 #. Change the setting to ``False`` and save your changes.

 To enable badging for your course if it was previously disabled, change the
 value of the key to ``True``.
