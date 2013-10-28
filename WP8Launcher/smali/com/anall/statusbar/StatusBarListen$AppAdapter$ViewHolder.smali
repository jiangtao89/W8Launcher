.class Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StatusBarListen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/StatusBarListen$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field app:Lcom/anall/statusbar/StatusBarListen$App;

.field checkLayout:Landroid/view/View;

.field img:Landroid/widget/ImageView;

.field lockCb:Landroid/widget/CheckBox;

.field seekButton:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field statuCb:Landroid/widget/CheckBox;

.field final synthetic this$1:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

.field tileCb:Landroid/widget/CheckBox;

.field toastCb:Landroid/widget/CheckBox;

.field tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarListen$AppAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->this$1:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
