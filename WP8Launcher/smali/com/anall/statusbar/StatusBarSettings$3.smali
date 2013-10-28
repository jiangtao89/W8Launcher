.class Lcom/anall/statusbar/StatusBarSettings$3;
.super Ljava/lang/Object;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anall/statusbar/StatusBarSettings;->createSeekbars()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/StatusBarSettings;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarSettings$3;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettings$3;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    const-class v2, Lcom/anall/statusbar/StatusBarListen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarSettings$3;->this$0:Lcom/anall/statusbar/StatusBarSettings;

    const/16 v2, 0x62

    invoke-virtual {v1, v0, v2}, Lcom/anall/statusbar/StatusBarSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    return-void
.end method
