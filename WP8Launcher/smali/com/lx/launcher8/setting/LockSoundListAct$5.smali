.class Lcom/lx/launcher8/setting/LockSoundListAct$5;
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

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/LockSoundListAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockSoundListAct$5;->this$0:Lcom/lx/launcher8/setting/LockSoundListAct;

    iput p2, p0, Lcom/lx/launcher8/setting/LockSoundListAct$5;->val$position:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_value"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sound_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lx/launcher8/setting/LockSoundListAct$5;->val$position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockSoundListAct$5;->this$0:Lcom/lx/launcher8/setting/LockSoundListAct;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lx/launcher8/setting/LockSoundListAct;->setResult(ILandroid/content/Intent;)V

    .line 117
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockSoundListAct$5;->this$0:Lcom/lx/launcher8/setting/LockSoundListAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/LockSoundListAct;->finish()V

    .line 118
    return-void
.end method
