.class Lcom/lx/launcher8/setting/LockPwdAct$2;
.super Ljava/lang/Object;
.source "LockPwdAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/LockPwdAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/LockPwdAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/LockPwdAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockPwdAct$2;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/LockPwdAct$2;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    const-class v2, Lcom/lx/launcher8/setting/PwdSetAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_modify"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockPwdAct$2;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/setting/LockPwdAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    return-void
.end method
