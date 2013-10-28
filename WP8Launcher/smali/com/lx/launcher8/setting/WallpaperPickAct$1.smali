.class Lcom/lx/launcher8/setting/WallpaperPickAct$1;
.super Ljava/lang/Object;
.source "WallpaperPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/WallpaperPickAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/WallpaperPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/WallpaperPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/WallpaperPickAct$1;->this$0:Lcom/lx/launcher8/setting/WallpaperPickAct;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct$1;->this$0:Lcom/lx/launcher8/setting/WallpaperPickAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->finish()V

    .line 90
    return-void
.end method
