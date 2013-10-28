.class Lcom/anall/statusbar/StatusBarListen$AppAdapter$2;
.super Ljava/lang/Object;
.source "StatusBarListen.java"

# interfaces
.implements Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/StatusBarListen$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anall/statusbar/StatusBarListen$AppAdapter;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarListen$AppAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter$2;->this$1:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/setting/wp8/view/SeekButton;Z)V
    .locals 4
    .parameter "seekButton"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;

    .line 299
    .local v1, vh:Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;
    if-nez v1, :cond_2

    .line 300
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 312
    :cond_0
    :goto_1
    return-void

    .line 300
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 304
    :cond_2
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->statuCb:Landroid/widget/CheckBox;

    invoke-virtual {v3, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->tileCb:Landroid/widget/CheckBox;

    invoke-virtual {v3, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 308
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->app:Lcom/anall/statusbar/StatusBarListen$App;

    iget-object v3, v3, Lcom/anall/statusbar/StatusBarListen$App;->pkg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 309
    if-eqz p2, :cond_3

    const/4 v0, 0x5

    .line 311
    .local v0, value:I
    :goto_2
    iget-object v2, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter$2;->this$1:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    #getter for: Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;
    invoke-static {v2}, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->access$0(Lcom/anall/statusbar/StatusBarListen$AppAdapter;)Lcom/anall/statusbar/StatusBarListen;

    move-result-object v2

    invoke-static {v2}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v2

    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->app:Lcom/anall/statusbar/StatusBarListen$App;

    iget-object v3, v3, Lcom/anall/statusbar/StatusBarListen$App;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/anall/statusbar/AppListen;->update(Ljava/lang/String;I)V

    goto :goto_1

    .end local v0           #value:I
    :cond_3
    move v0, v2

    .line 309
    goto :goto_2
.end method
