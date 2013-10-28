.class Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;
.super Lcom/app/common/bll/BllXmlPull;
.source "CheckUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/task/CheckUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BllUpdate"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1d63330cf950535cL


# instance fields
.field private mDownload:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;

.field private mNewVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

.field private updateType:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/task/CheckUpdateTask;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 153
    const/4 v0, 0x2

    iput v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->updateType:I

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mNewVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mDownload:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)I
    .locals 1
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->updateType:I

    return v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mMsg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getUpdateInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    .line 162
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 157
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
    .line 166
    const-string v0, "newvs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mNewVersion:Ljava/lang/String;

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v0, "remark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mMsg:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, "downurl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->mDownload:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_2
    const-string v0, "updatetype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->getTextInt()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$BllUpdate;->updateType:I

    goto :goto_0

    .line 174
    :cond_3
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto :goto_0
.end method
