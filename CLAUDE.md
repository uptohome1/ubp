# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an OpenCart checkout success page module. It consists of a PHP controller and a Smarty template that handle the post-purchase confirmation flow.

## Architecture

- **success.php** — OpenCart MVC controller (`ControllerCheckoutSuccess`). Handles order completion: captures order ID/total before clearing the cart and session data, logs activity for authenticated and guest customers, builds breadcrumbs, and renders the template.
- **success.tpl** — Smarty template that renders the success message and pushes a `purchase` event to Google Analytics `dataLayer` with `Revenue` and `OrderId`.

## OpenCart Conventions Used

- Controller extends `Controller` base class with `index()` as the default action
- Model loading: `$this->load->model('path')`; accessed as `$this->model_path_name`
- Language loading: `$this->load->language('path')`; keys via `$this->language->get('key')`
- View rendering: `$this->load->view('template/path.tpl', $data)`
- Template resolution: checks store-configured template first, falls back to `default/template/`
- Session state in `$this->session->data[]`

## Build & Test

No build system, package manager, linting, or test framework is configured. The files are deployed directly into an OpenCart installation's directory structure.
