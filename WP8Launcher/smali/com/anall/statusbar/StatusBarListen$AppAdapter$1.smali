.class Lcom/anall/statusbar/StatusBarListen$AppAdapter$1;
.super Ljava/lang/Object;
.source "StatusBarListen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter$1;->this$1:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "buttonView"

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;

    .line 266
    .local v1, holder:Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;
    if-nez v1, :cond_1

    .line 292
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 267
    .restart local p1
    :cond_1
    iget-object v5, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->app:Lcom/anall/statusbar/StatusBarListen$App;

    iget-object v3, v5, Lcom/anall/statusbar/StatusBarListen$App;->pkg:Ljava/lang/String;

    .line 268
    .local v3, pkg:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 269
    iget-object v5, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter$1;->this$1:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    #getter for: Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;
    invoke-static {v5}, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->access$0(Lcom/anall/statusbar/StatusBarListen$AppAdapter;)Lcom/anall/statusbar/StatusBarListen;

    move-result-object v5

    invoke-static {v5}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v0

    .line 270
    .local v0, al:Lcom/anall/statusbar/AppListen;
    invoke-virtual {v0, v3}, Lcom/anall/statusbar/AppListen;->get(Ljava/lang/String;)I

    move-result v4

    .line 271
    .local v4, value:I
    const/4 v2, 0x0

    .line 272
    .local v2, index:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 285
    :goto_1
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    or-int/2addr v4, v2

    .line 288
    :goto_2
    invoke-virtual {v0, v3, v4}, Lcom/anall/statusbar/AppListen;->update(Ljava/lang/String;I)V

    .line 291
    iget-object v6, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->seekButton:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v6, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto :goto_0

    .line 274
    .restart local p1
    :pswitch_0
    const/4 v2, 0x4

    .line 275
    goto :goto_1

    .line 277
    :pswitch_1
    const/4 v2, 0x2

    .line 278
    goto :goto_1

    .line 280
    :pswitch_2
    const/4 v2, 0x1

    .line 281
    goto :goto_1

    .line 283
    :pswitch_3
    const/16 v2, 0x8

    goto :goto_1

    .line 287
    .end local p1
    :cond_2
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v4, v5

    goto :goto_2

    .line 291
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900e7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
