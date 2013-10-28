.class Lcom/anall/statusbar/StatusBarSettingsWP8$3;
.super Ljava/lang/Object;
.source "StatusBarSettingsWP8.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anall/statusbar/StatusBarSettingsWP8;->setupStatusBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarSettingsWP8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$3;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$3;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    #calls: Lcom/anall/statusbar/StatusBarSettingsWP8;->enableHit()Z
    invoke-static {v1}, Lcom/anall/statusbar/StatusBarSettingsWP8;->access$5(Lcom/anall/statusbar/StatusBarSettingsWP8;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$3;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    const-class v2, Lcom/anall/statusbar/StatusBarListen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettingsWP8$3;->this$0:Lcom/anall/statusbar/StatusBarSettingsWP8;

    const/16 v2, 0x62

    invoke-virtual {v1, v0, v2}, Lcom/anall/statusbar/StatusBarSettingsWP8;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
