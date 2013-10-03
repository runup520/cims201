#encoding: utf-8
class StaticPagesController < ApplicationController

  def admin
    @user = User.find(current_user)
    @articles = Article.page(params[:page]).per(20)
  end

  def old_show    
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    @programmer_shows = Article.where("tag = '编程学习'").page(params[:page]).per(10)
    @work_shows = Article.where("tag = '就业信息'").page(params[:page]).per(10)
    @job_shows = Article.where("tag = '就业信息'")  
    @search = Article.search do
       fulltext params[:search]
    end
    @articles_results = @search.results
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @jobs = Article.where("tag = '就业信息'").page(params[:page]).per(1)
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)      
    @fun_shows = Article.where("tag = '生活娱乐'").page(params[:page]).per(10)    
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
  end

  def new_show
    @programmer_shows = Article.where("tag = '编程学习'").page(params[:page]).per(10)
    @work_shows = Article.where("tag = '就业信息'").page(params[:page]).per(10)
    @job_shows = Article.where("tag = '就业信息'")  
    @search = Article.search do
       fulltext params[:search]
    end
    @articles_results = @search.results
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @jobs = Article.where("tag = '就业信息'").page(params[:page]).per(1)
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)      
    @fun_shows = Article.where("tag = '生活娱乐'").page(params[:page]).per(10)    
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

  def fun_show
    @programmer_shows = Article.where("tag = '编程学习'").page(params[:page]).per(10)
    @work_shows = Article.where("tag = '就业信息'").page(params[:page]).per(10)
    @job_shows = Article.where("tag = '就业信息'")  
    @search = Article.search do
       fulltext params[:search]
    end
    @articles_results = @search.results
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @jobs = Article.where("tag = '就业信息'").page(params[:page]).per(1)
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)  
    
    @fun_shows = Article.where("tag = '生活娱乐'").page(params[:page]).per(10)
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end


  def programmer_show
    @fun_shows = Article.where("tag = '生活娱乐'")
    
    @programmer_shows = Article.where("tag = '编程学习'").page(params[:page]).per(10)
    @work_shows = Article.where("tag = '就业信息'").page(params[:page]).per(10)
    @job_shows = Article.where("tag = '就业信息'")  
    @search = Article.search do
       fulltext params[:search]
    end
    @articles_results = @search.results
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @jobs = Article.where("tag = '就业信息'").page(params[:page]).per(1)
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2) 
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10) 
    
  end



  def work_show
    @fun_shows = Article.where("tag = '生活娱乐'")
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'").page(params[:page]).per(10)
    @job_shows = Article.where("tag = '就业信息'")  
    @search = Article.search do
       fulltext params[:search]
    end
    @articles_results = @search.results
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @jobs = Article.where("tag = '就业信息'").page(params[:page]).per(1)
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
    @programmer_shows = Article.where("tag = '编程学习'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)     
  end

  def job_show
    @fun_shows = Article.where("tag = '生活娱乐'")
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
    
    
    @job_shows = Article.where("tag = '就业信息'")  
    @search = Article.search do
       fulltext params[:search]
    end
    @articles_results = @search.results
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @jobs = Article.where("tag = '就业信息'").page(params[:page]).per(1)
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)    
  end

  def job
    @fun_shows = Article.where("tag = '生活娱乐'")
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
    @search = Article.search do
       fulltext params[:search]
    end
    @articles_results = @search.results

    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @jobs = Article.where("tag = '就业信息'").page(params[:page]).per(1)
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

  def searchresult
    @search = Article.search do
       fulltext params[:search]
    end
    @articles_results = @search.results


    @fun_shows = Article.where("tag = '生活娱乐'")
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    

    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)

  end

  def seven_show
    @fun_shows = Article.where("tag = '生活娱乐'")
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")

    @search = Article.search do
       fulltext params[:search]
    end
    @articles_results = @search.results

    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @jobs = Article.where("tag = '就业信息'").page(params[:page]).per(1)
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(10)
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
  end




    
  def home
    @olds = Article.where("tag = '老生资源'").page(params[:page]).per(5)
    @news = Article.where("tag = '新生问答'").page(params[:page]).per(5)
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)    
    @fun_shows = Article.where("tag = '生活娱乐'")   
    @funs = Article.where("tag = '生活娱乐'").page(params[:page]).per(5)
    @programmer_shows = Article.where("tag = '编程学习'")
    @programmers = Article.where("tag = '编程学习'").page(params[:page]).per(5)
    @work_shows = Article.where("tag = '就业信息'")
    @sevens=Article.where("tag = '走七活动'").page(params[:page]).per(5)
    @works = Article.where("tag = '就业信息'").page(params[:page]).per(5)   
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
  	@kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @search = Article.search do
       fulltext params[:search]
    end
    @articles_results = @search.results
end

  def help
  end
  
  def about
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
  end

  def contact
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
  end

  def km
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
  end

  def java
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
  end

  def rails
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
  end

  def js
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")

    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
  end

  def pm
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
  end

  def time
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)

  end

  def ecommerce
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)

  end

  def product
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

  def mobile
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

  def movie
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

   def logic
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")    
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

  def read
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")   
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

  def life
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")   
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")   
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

  def java
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")

    @kms = Article.where("tag = '知识管理'")
    @javas = Article.where("tag = 'java开发'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")   
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")
    
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")
    
    @javas = Article.where("tag = 'java学习'")
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

  def ruby
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @javas = Article.where("tag = 'java开发'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")   
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")   
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")    
    @javas = Article.where("tag = 'java学习'")    
    @rubys = Article.where("tag = 'ruby学习'")
     @datas = Article.where("tag = '数据结构'")
     @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
     @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

  def data
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @javas = Article.where("tag = 'java开发'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")   
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")   
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")    
    @javas = Article.where("tag = 'java学习'")    
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end

  def web
    @fun_shows = Article.where("tag = '生活娱乐'")
    @new_shows = Article.where("tag = '新生问答'").page(params[:page]).per(10)
    
    @programmer_shows = Article.where("tag = '编程学习'")
    @work_shows = Article.where("tag = '就业信息'")
     @job_shows = Article.where("tag = '就业信息'")
     @jobs = Article.where("tag = '就业信息'")
    @kms = Article.where("tag = '知识管理'")
    @javas = Article.where("tag = 'java开发'")
    @articles = Article.page(params[:page]).per(4)
    @pms = Article.where("tag = '产品经理'")
    @times = Article.where("tag = '时间管理'")
    @ecommerces = Article.where("tag = '电子商务'")
    @products = Article.where("tag = '互联网产品'")
    @mobiles = Article.where("tag = '移动互联网'")
    @movies = Article.where("tag = '电影人生'")   
    @logics = Article.where("tag = '思维逻辑'")
    @reads = Article.where("tag = '阅读空间'")   
    @lifes = Article.where("tag = '生活感悟'")
    @webs = Article.where("tag = 'web开发'")    
    @javas = Article.where("tag = 'java学习'")    
    @rubys = Article.where("tag = 'ruby学习'")
    @datas = Article.where("tag = '数据结构'")
    @seven_shows=Article.where("tag = '走七活动'").page(params[:page]).per(2)
    @old_shows = Article.where("tag = '老生资源'").page(params[:page]).per(10)
    
  end





end

