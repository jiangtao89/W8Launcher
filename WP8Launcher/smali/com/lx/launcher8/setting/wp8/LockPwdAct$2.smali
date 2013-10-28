.class Lcom/lx/launcher8/setting/wp8/LockPwdAct$2;
.super Ljava/lang/Object;
.source "LockPwdAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LockPwdAct;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockPwdAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    const-class v2, Lcom/lx/launcher8/setting/wp8/PwdSetAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_modify"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 91
    return-void
.end method
