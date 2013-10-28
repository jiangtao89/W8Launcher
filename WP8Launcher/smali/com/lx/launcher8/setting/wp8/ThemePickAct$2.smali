.class Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;
.super Ljava/lang/Object;
.source "ThemePickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemePickAct;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;)Lcom/lx/launcher8/setting/wp8/ThemePickAct;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 68
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->access$5(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, dialog:Lcom/lx/launcher8/view/PopupDialog;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setEditTextVisible(Z)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    const v3, 0x7f0a00a9

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2$1;

    invoke-direct {v3, p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;Lcom/lx/launcher8/view/PopupDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    const v3, 0x7f0a0078

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2$2;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2$2;-><init>(Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;)V

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    .line 109
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 110
    return-void
.end method
