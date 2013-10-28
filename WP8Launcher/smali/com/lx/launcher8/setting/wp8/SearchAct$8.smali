.class Lcom/lx/launcher8/setting/wp8/SearchAct$8;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$8;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$8;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$10(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$8;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$11(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$8;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$12(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$8;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mListSv:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$13(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 274
    return-void
.end method
