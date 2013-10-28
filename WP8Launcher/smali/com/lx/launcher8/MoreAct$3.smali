.class Lcom/lx/launcher8/MoreAct$3;
.super Ljava/lang/Object;
.source "MoreAct.java"

# interfaces
.implements Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/MoreAct;->exec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/MoreAct;

.field private final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/MoreAct;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/MoreAct$3;->this$0:Lcom/lx/launcher8/MoreAct;

    iput-object p2, p0, Lcom/lx/launcher8/MoreAct$3;->val$tv:Landroid/widget/TextView;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayAds(Lcom/lx/launcher8/task/BllWP8Init;)V
    .locals 2
    .parameter "bll"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/lx/launcher8/task/BllWP8Init;->mResult:Lcom/app/common/bll/CResult;

    iget-boolean v0, v0, Lcom/app/common/bll/CResult;->mHaveNet:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/MoreAct$3;->val$tv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/lx/launcher8/task/BllWP8Init;->myShowInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    return-void
.end method
