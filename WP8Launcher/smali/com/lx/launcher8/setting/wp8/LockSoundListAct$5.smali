.class Lcom/lx/launcher8/setting/wp8/LockSoundListAct$5;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    const v3, 0x7f0a0241

    invoke-static {v2, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method
