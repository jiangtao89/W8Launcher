.class Lcom/lx/launcher8/setting/wp8/AppIndexAct$1;
.super Ljava/lang/Object;
.source "AppIndexAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/AppIndexAct;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/AppIndexAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/AppIndexAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AppIndexAct;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 49
    .local v1, drop:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/anall/statusbar/DropDowmLinearLayout;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 50
    check-cast v2, Lcom/anall/statusbar/DropDowmLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/anall/statusbar/DropDowmLinearLayout;->selected(I)V

    .line 52
    :cond_0
    check-cast v1, Lcom/anall/statusbar/DropDowmLinearLayout;

    .end local v1           #drop:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Lcom/anall/statusbar/DropDowmLinearLayout;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0179

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 54
    .local v0, blod:Z
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/AppIndexAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mAppSetting:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->access$0(Lcom/lx/launcher8/setting/wp8/AppIndexAct;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIndexBlod(Z)V

    .line 56
    .end local v0           #blod:Z
    :cond_1
    return-void

    .line 53
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
