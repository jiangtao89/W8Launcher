.class Lcom/lx/launcher8/setting/LockSoundListAct$3;
.super Ljava/lang/Object;
.source "LockSoundListAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/LockSoundListAct;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/LockSoundListAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/LockSoundListAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockSoundListAct$3;->this$0:Lcom/lx/launcher8/setting/LockSoundListAct;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_value"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockSoundListAct$3;->this$0:Lcom/lx/launcher8/setting/LockSoundListAct;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lx/launcher8/setting/LockSoundListAct;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockSoundListAct$3;->this$0:Lcom/lx/launcher8/setting/LockSoundListAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/LockSoundListAct;->finish()V

    .line 90
    return-void
.end method
