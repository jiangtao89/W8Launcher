.class Lcom/app/ads/AdsAct$7;
.super Ljava/lang/Object;
.source "AdsAct.java"

# interfaces
.implements Lcom/app/common/view/EmptyView$OnFreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/AdsAct;->execList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/AdsAct;


# direct methods
.method constructor <init>(Lcom/app/ads/AdsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/AdsAct$7;->this$0:Lcom/app/ads/AdsAct;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fresh()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/app/ads/AdsAct$7;->this$0:Lcom/app/ads/AdsAct;

    iget-object v1, p0, Lcom/app/ads/AdsAct$7;->this$0:Lcom/app/ads/AdsAct;

    invoke-virtual {v1}, Lcom/app/ads/AdsAct;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/app/ads/AdsAct;->exeTask(I)V

    .line 216
    return-void
.end method
