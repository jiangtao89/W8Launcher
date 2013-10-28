.class Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct$1;
.super Ljava/lang/Thread;
.source "ThemeOnlineListAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/lx/launcher8/util/BitmapManager;->getInstance()Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/util/BitmapManager;->clearCache()V

    .line 75
    return-void
.end method
