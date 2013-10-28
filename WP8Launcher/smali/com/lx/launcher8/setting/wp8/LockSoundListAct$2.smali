.class Lcom/lx/launcher8/setting/wp8/LockSoundListAct$2;
.super Ljava/lang/Object;
.source "LockSoundListAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_value"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->setResult(ILandroid/content/Intent;)V

    .line 79
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->finish()V

    .line 80
    return-void
.end method
