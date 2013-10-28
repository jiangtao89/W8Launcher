.class public Lcom/lx/launcher8/setting/bean/PaperInfo;
.super Ljava/lang/Object;
.source "PaperInfo.java"

# interfaces
.implements Lcom/lx/launcher8/setting/bean/VO;


# static fields
.field private static final serialVersionUID:J = 0x2415d4a1dd536eb8L


# instance fields
.field private actUrl:Ljava/lang/String;

.field private hot:I

.field private preUrl:Ljava/lang/String;

.field private rid:I

.field public statistics:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->rid:I

    .line 9
    iput-object v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->title:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->hot:I

    .line 13
    iput-object v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->preUrl:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->actUrl:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 61
    instance-of v1, p1, Lcom/lx/launcher8/setting/bean/PaperInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 63
    .local v0, pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    iget v1, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->rid:I

    iget v2, v0, Lcom/lx/launcher8/setting/bean/PaperInfo;->rid:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 65
    .end local v0           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->actUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHot()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->hot:I

    return v0
.end method

.method public getPreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->preUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRid()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->rid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setActUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "actUrl"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->actUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setHot(I)V
    .locals 0
    .parameter "hot"

    .prologue
    .line 40
    iput p1, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->hot:I

    .line 41
    return-void
.end method

.method public setPreUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "preUrl"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->preUrl:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setRid(I)V
    .locals 0
    .parameter "rid"

    .prologue
    .line 24
    iput p1, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->rid:I

    .line 25
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/PaperInfo;->title:Ljava/lang/String;

    .line 33
    return-void
.end method
