.class Lcom/lx/launcher8/task/PaperStatisticsTask$BllStatistics;
.super Lcom/app/common/bll/BllXmlPull;
.source "PaperStatisticsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/task/PaperStatisticsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BllStatistics"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/task/PaperStatisticsTask;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/task/PaperStatisticsTask;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lx/launcher8/task/PaperStatisticsTask$BllStatistics;->this$0:Lcom/lx/launcher8/task/PaperStatisticsTask;

    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    return-void
.end method


# virtual methods
.method public exeStatistics(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 38
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    .line 39
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method
