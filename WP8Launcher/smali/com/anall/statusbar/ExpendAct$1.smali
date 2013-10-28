.class Lcom/anall/statusbar/ExpendAct$1;
.super Ljava/lang/Object;
.source "ExpendAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/ExpendAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/ExpendAct;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/ExpendAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/ExpendAct$1;->this$0:Lcom/anall/statusbar/ExpendAct;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anall.launcher.statusbar.hide"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "act_extra"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/anall/statusbar/ExpendAct$1;->this$0:Lcom/anall/statusbar/ExpendAct;

    invoke-virtual {v1, v0}, Lcom/anall/statusbar/ExpendAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
