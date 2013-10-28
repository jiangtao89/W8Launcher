.class Lcom/lx/launcher8/setting/PageSetAct$2;
.super Ljava/lang/Object;
.source "PageSetAct.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/PageSetAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/PageSetAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/PageSetAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/PageSetAct$2;->this$0:Lcom/lx/launcher8/setting/PageSetAct;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 57
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 54
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/lx/launcher8/setting/PageSetAct$2;->this$0:Lcom/lx/launcher8/setting/PageSetAct;

    #getter for: Lcom/lx/launcher8/setting/PageSetAct;->mMenuView:Lcom/lx/launcher8/setting/view/MenuBar;
    invoke-static {v1}, Lcom/lx/launcher8/setting/PageSetAct;->access$0(Lcom/lx/launcher8/setting/PageSetAct;)Lcom/lx/launcher8/setting/view/MenuBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/MenuBar;->getCurrentPos()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/PageSetAct$2;->this$0:Lcom/lx/launcher8/setting/PageSetAct;

    #getter for: Lcom/lx/launcher8/setting/PageSetAct;->mMenuView:Lcom/lx/launcher8/setting/view/MenuBar;
    invoke-static {v1}, Lcom/lx/launcher8/setting/PageSetAct;->access$0(Lcom/lx/launcher8/setting/PageSetAct;)Lcom/lx/launcher8/setting/view/MenuBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lx/launcher8/setting/view/MenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method
