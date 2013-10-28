.class Lcom/app/download/DownloadManagerAct$2;
.super Ljava/lang/Object;
.source "DownloadManagerAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/DownloadManagerAct;->exec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/DownloadManagerAct;


# direct methods
.method constructor <init>(Lcom/app/download/DownloadManagerAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/DownloadManagerAct$2;->this$0:Lcom/app/download/DownloadManagerAct;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct$2;->this$0:Lcom/app/download/DownloadManagerAct;

    invoke-virtual {v0}, Lcom/app/download/DownloadManagerAct;->finish()V

    .line 63
    return-void
.end method
