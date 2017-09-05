<?php
class ControllerExtensionModuleQuantityincrementdecrement extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/module/quantityincrementdecrement');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('quantityincrementdecrement', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
		}

		$data['entry_featured']        = $this->language->get('entry_featured');
		$data['entry_latest']          = $this->language->get('entry_latest');
		$data['entry_bestseller']      = $this->language->get('entry_bestseller');
		$data['entry_special']         = $this->language->get('entry_special');
		$data['entry_category']        = $this->language->get('entry_category');
		$data['entry_manufactures']    = $this->language->get('entry_manufactures');
		$data['entry_related']         = $this->language->get('entry_related');
		$data['entry_search']          = $this->language->get('entry_search');
		$data['entry_product']         = $this->language->get('entry_product');
		$data['entry_status']         = $this->language->get('entry_status');

		$data['text_enabled']         = $this->language->get('text_enabled');
		$data['text_disabled']         = $this->language->get('text_disabled');
		$data['heading_title']         = $this->language->get('heading_title');
		$data['text_edit']         = $this->language->get('text_edit');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/quantityincrementdecrement', 'token=' . $this->session->data['token'], true)
		);

		$data['action'] = $this->url->link('extension/module/quantityincrementdecrement', 'token=' . $this->session->data['token'], true);


		$data['cancel'] = $this->url->link('marketplace/extension', 'token=' . $this->session->data['token'] . '&type=module', true);


		$data['token'] = $this->session->data['token'];

		$quantityincrementdecrement_featured_status=$this->config->get('quantityincrementdecrement_featured_status');
		if (isset($this->request->post['quantityincrementdecrement_featured_status'])) {
			$data['quantityincrementdecrement_featured_status'] = $this->request->post['quantityincrementdecrement_featured_status'];
		} else if($quantityincrementdecrement_featured_status){
			$data['quantityincrementdecrement_featured_status'] = $this->config->get('quantityincrementdecrement_featured_status');
		} else{
			$data['quantityincrementdecrement_featured_status'] = '0';
		}

		$quantityincrementdecrement_bestseller_status=$this->config->get('quantityincrementdecrement_bestseller_status');
		if (isset($this->request->post['quantityincrementdecrement_bestseller_status'])) {
			$data['quantityincrementdecrement_bestseller_status'] = $this->request->post['quantityincrementdecrement_bestseller_status'];
		} else if($quantityincrementdecrement_bestseller_status){
			$data['quantityincrementdecrement_bestseller_status'] = $this->config->get('quantityincrementdecrement_bestseller_status');
		}else {
			$data['quantityincrementdecrement_bestseller_status'] = '0';
		}

		$quantityincrementdecrement_latest_status=$this->config->get('quantityincrementdecrement_latest_status');
		if (isset($this->request->post['quantityincrementdecrement_latest_status'])) {
			$data['quantityincrementdecrement_latest_status'] = $this->request->post['quantityincrementdecrement_latest_status'];
		} else if($quantityincrementdecrement_latest_status){
			$data['quantityincrementdecrement_latest_status'] = $this->config->get('quantityincrementdecrement_latest_status');
		} else {
			$data['quantityincrementdecrement_latest_status'] = '0';
		}

		$quantityincrementdecrement_special_status=$this->config->get('quantityincrementdecrement_special_status');
		if (isset($this->request->post['quantityincrementdecrement_special_status'])) {
			$data['quantityincrementdecrement_special_status'] = $this->request->post['quantityincrementdecrement_special_status'];
		} else if($quantityincrementdecrement_special_status){
			$data['quantityincrementdecrement_special_status'] = $this->config->get('quantityincrementdecrement_special_status');
		} else {
			$data['quantityincrementdecrement_special_status'] = '0';
		}

		$quantityincrementdecrement_category_status=$this->config->get('quantityincrementdecrement_category_status');
		if (isset($this->request->post['quantityincrementdecrement_category_status'])) {
			$data['quantityincrementdecrement_category_status'] = $this->request->post['quantityincrementdecrement_category_status'];
		} else if($quantityincrementdecrement_category_status){
			$data['quantityincrementdecrement_category_status'] = $this->config->get('quantityincrementdecrement_category_status');
		} else {
			$data['quantityincrementdecrement_category_status'] = '0';
		}

		$quantityincrementdecrement_manufactures_status=$this->config->get('quantityincrementdecrement_manufactures_status');
		if (isset($this->request->post['quantityincrementdecrement_manufactures_status'])) {
			$data['quantityincrementdecrement_manufactures_status'] = $this->request->post['quantityincrementdecrement_manufactures_status'];
		} else if($quantityincrementdecrement_manufactures_status){
			$data['quantityincrementdecrement_manufactures_status'] = $this->config->get('quantityincrementdecrement_manufactures_status');
		} else {
			$data['quantityincrementdecrement_manufactures_status'] = '0';
		}

		$quantityincrementdecrement_product_status=$this->config->get('quantityincrementdecrement_product_status');
		if (isset($this->request->post['quantityincrementdecrement_product_status'])) {
			$data['quantityincrementdecrement_product_status'] = $this->request->post['quantityincrementdecrement_product_status'];
		} else if($quantityincrementdecrement_product_status){
			$data['quantityincrementdecrement_product_status'] = $this->config->get('quantityincrementdecrement_product_status');
		} else {
			$data['quantityincrementdecrement_product_status'] = '0';
		}

		$quantityincrementdecrement_related_status=$this->config->get('quantityincrementdecrement_related_status');
		if (isset($this->request->post['quantityincrementdecrement_related_status'])) {
			$data['quantityincrementdecrement_related_status'] = $this->request->post['quantityincrementdecrement_related_status'];
		} else if($quantityincrementdecrement_related_status){
			$data['quantityincrementdecrement_related_status'] = $this->config->get('quantityincrementdecrement_related_status');
		} else {
			$data['quantityincrementdecrement_related_status'] = '0';
		}

		$quantityincrementdecrement_search_status=$this->config->get('quantityincrementdecrement_search_status');
		if (isset($this->request->post['quantityincrementdecrement_search_status'])) {
			$data['quantityincrementdecrement_search_status'] = $this->request->post['quantityincrementdecrement_search_status'];
		} else if($quantityincrementdecrement_search_status){
			$data['quantityincrementdecrement_search_status'] = $this->config->get('quantityincrementdecrement_search_status');
		} else {
			$data['quantityincrementdecrement_search_status'] = '0';
		}

		$quantityincrementdecrement_status=$this->config->get('quantityincrementdecrement_status');
		if (isset($this->request->post['quantityincrementdecrement_status'])) {
			$data['quantityincrementdecrement_status'] = $this->request->post['quantityincrementdecrement_status'];
		} else if($quantityincrementdecrement_status){
			$data['quantityincrementdecrement_status'] = $this->config->get('quantityincrementdecrement_status');
		} else {
			$data['quantityincrementdecrement_status'] = '0';
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/quantityincrementdecrement', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/quantityincrementdecrement')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}
