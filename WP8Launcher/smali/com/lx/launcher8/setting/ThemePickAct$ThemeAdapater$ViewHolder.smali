.class Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;
.super Ljava/lang/Object;
.source "ThemePickAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field fl:Landroid/widget/FrameLayout;

.field loading:Landroid/widget/LinearLayout;

.field screenShotIv:Landroid/widget/ImageView;

.field sv:Landroid/widget/ScrollView;

.field textTv:Landroid/widget/TextView;

.field theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

.field final synthetic this$1:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater$ViewHolder;->this$1:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
