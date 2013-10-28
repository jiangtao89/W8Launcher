.class Lcom/app/download/task/CheckUpdateTask$BllUpdate;
.super Lcom/app/common/bll/BllXmlPull;
.source "CheckUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/download/task/CheckUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BllUpdate"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2c5b17189afb8941L


# instance fields
.field private mDownload:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;

.field private mNewVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/app/download/task/CheckUpdateTask;

.field private updateType:I


# direct methods
.method constructor <init>(Lcom/app/download/task/CheckUpdateTask;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->this$0:Lcom/app/download/task/CheckUpdateTask;

    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->updateType:I

    return-void
.end method

.method static synthetic access$0(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mDownload:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)I
    .locals 1
    .parameter

    .prologue
    .line 122
    iget v0, p0, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->updateType:I

    return v0
.end method

.method static synthetic access$2(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mNewVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/app/download/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mMsg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getUpdateInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    .line 130
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected startTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    const-string v0, "newvs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mNewVersion:Ljava/lang/String;

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "remark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mMsg:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_1
    const-string v0, "downurl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->mDownload:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_2
    const-string v0, "updatetype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->getTextInt()I

    move-result v0

    iput v0, p0, Lcom/app/download/task/CheckUpdateTask$BllUpdate;->updateType:I

    goto :goto_0

    .line 142
    :cond_3
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto :goto_0
.end method
