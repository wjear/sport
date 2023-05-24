<?php

namespace App\Admin\Controllers;

use App\Models\SportModel;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SportController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'SportModel';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new SportModel());

        $grid->column('id', __('Id'));
        $grid->column('sport', __('Sport'));
        $grid->column('activity_type_name', __('Activity type'));
        $grid->column('headcount', __('Headcount'));
        $grid->column('date', __('Date'));
        $grid->column('createtime', __('Createtime'));
        $grid->column('updatetime', __('Updatetime'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(SportModel::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('sport', __('Sport'));
        $show->field('activity_type', __('Activity type'));
        $show->field('headcount', __('Headcount'));
        $show->field('date', __('Date'));
        $show->field('createtime', __('Createtime'));
        $show->field('updatetime', __('Updatetime'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new SportModel());

        $form->text('sport', __('Sport'));
        $form->radio('activity_type',__('Sport'))->options([ 0=>'无',
            1=>'5-a-side',
            2=>'adult football',
            3=>'junior football']);
        $form->text('headcount', __('Headcount'));
        $form->date('date', __('Date'))->default(date('Y-m-d'));
        $form->text('createtime', __('Createtime'));
        $form->text('updatetime', __('Updatetime'));

        return $form;
    }
}
