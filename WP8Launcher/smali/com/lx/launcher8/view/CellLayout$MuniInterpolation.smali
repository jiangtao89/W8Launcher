.class Lcom/lx/launcher8/view/CellLayout$MuniInterpolation;
.super Landroid/view/animation/DecelerateInterpolator;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MuniInterpolation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/CellLayout;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/view/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout$MuniInterpolation;->this$0:Lcom/lx/launcher8/view/CellLayout;

    .line 1373
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1374
    return-void
.end method
