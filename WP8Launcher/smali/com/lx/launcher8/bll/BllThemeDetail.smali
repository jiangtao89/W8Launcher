.class public Lcom/lx/launcher8/bll/BllThemeDetail;
.super Lcom/app/common/bll/BllXmlPull;
.source "BllThemeDetail.java"


# static fields
.field private static final serialVersionUID:J = 0x51e57ed5902d8fcL


# instance fields
.field public mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    return-void
.end method


# virtual methods
.method public getThemeDetail(Landroid/content/Context;I)Lcom/lx/launcher8/bll/BllThemeDetail;
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 20
    invoke-static {p1}, Lcom/lx/launcher8/util/Utils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mLanguage:Ljava/lang/String;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "themeid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, params:Ljava/lang/String;
    const-string v1, "http://client.anall.cn/wp8/ThemeDetail.aspx"

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/bll/BllThemeDetail;

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, "theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    new-instance v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/ThemeDetail;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v0, "themeid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getTextInt()I

    move-result v1

    iput v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->id:I

    goto :goto_0

    .line 32
    :cond_2
    const-string v0, "themename"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->name:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_3
    const-string v0, "nick"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->author:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_4
    const-string v0, "filesize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getTextInt()I

    move-result v1

    iput v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->size:I

    goto :goto_0

    .line 41
    :cond_5
    const-string v0, "vsname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->version:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_6
    const-string v0, "package"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->pkg:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_7
    const-string v0, "downfrom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getTextInt()I

    move-result v1

    iput v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->downType:I

    goto/16 :goto_0

    .line 50
    :cond_8
    const-string v0, "date"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->time:Ljava/lang/String;

    goto/16 :goto_0

    .line 53
    :cond_9
    const-string v0, "downurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->downurl:Ljava/lang/String;

    goto/16 :goto_0

    .line 56
    :cond_a
    const-string v0, "partimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->screenUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 59
    :cond_b
    const-string v0, "actpartimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->actScreenurl:Ljava/lang/String;

    goto/16 :goto_0

    .line 62
    :cond_c
    const-string v0, "fullimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->fullscreenurl:Ljava/lang/String;

    goto/16 :goto_0

    .line 65
    :cond_d
    const-string v0, "actfullimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->actFullscreenurl:Ljava/lang/String;

    goto/16 :goto_0

    .line 68
    :cond_e
    const-string v0, "wallimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->paperurl:Ljava/lang/String;

    goto/16 :goto_0

    .line 71
    :cond_f
    const-string v0, "actwallimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->actpaperurl:Ljava/lang/String;

    goto/16 :goto_0

    .line 74
    :cond_10
    const-string v0, "lockimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->lockUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 77
    :cond_11
    const-string v0, "actlockimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeDetail;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/ThemeDetail;->actlockurl:Ljava/lang/String;

    goto/16 :goto_0

    .line 80
    :cond_12
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
