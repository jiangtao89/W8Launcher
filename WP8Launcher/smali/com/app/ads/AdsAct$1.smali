.class Lcom/app/ads/AdsAct$1;
.super Ljava/lang/Object;
.source "AdsAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/ads/AdsAct;
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
    iput-object p1, p0, Lcom/app/ads/AdsAct$1;->this$0:Lcom/app/ads/AdsAct;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/app/ads/AdsAct$1;->this$0:Lcom/app/ads/AdsAct;

    iget-object v1, p0, Lcom/app/ads/AdsAct$1;->this$0:Lcom/app/ads/AdsAct;

    invoke-virtual {v1}, Lcom/app/ads/AdsAct;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/app/ads/AdsAct;->exeTask(I)V

    .line 248
    return-void
.end method
