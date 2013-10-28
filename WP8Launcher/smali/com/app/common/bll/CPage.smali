.class public Lcom/app/common/bll/CPage;
.super Ljava/lang/Object;
.source "CPage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x392e4402264999b0L


# instance fields
.field private mIndex:I

.field private mIsnextpage:Z

.field private mP:I

.field private mPagesize:I

.field private mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/app/common/bll/CPage;->mP:I

    .line 21
    const/16 v0, 0x14

    iput v0, p0, Lcom/app/common/bll/CPage;->mPagesize:I

    .line 26
    iput v1, p0, Lcom/app/common/bll/CPage;->mTotal:I

    .line 30
    iput-boolean v1, p0, Lcom/app/common/bll/CPage;->mIsnextpage:Z

    .line 35
    iput v1, p0, Lcom/app/common/bll/CPage;->mIndex:I

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "pagesize"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/app/common/bll/CPage;->mP:I

    .line 21
    const/16 v0, 0x14

    iput v0, p0, Lcom/app/common/bll/CPage;->mPagesize:I

    .line 26
    iput v1, p0, Lcom/app/common/bll/CPage;->mTotal:I

    .line 30
    iput-boolean v1, p0, Lcom/app/common/bll/CPage;->mIsnextpage:Z

    .line 35
    iput v1, p0, Lcom/app/common/bll/CPage;->mIndex:I

    .line 59
    iput p1, p0, Lcom/app/common/bll/CPage;->mPagesize:I

    .line 60
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "p"
    .parameter "pagesize"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/app/common/bll/CPage;->mP:I

    .line 21
    const/16 v0, 0x14

    iput v0, p0, Lcom/app/common/bll/CPage;->mPagesize:I

    .line 26
    iput v1, p0, Lcom/app/common/bll/CPage;->mTotal:I

    .line 30
    iput-boolean v1, p0, Lcom/app/common/bll/CPage;->mIsnextpage:Z

    .line 35
    iput v1, p0, Lcom/app/common/bll/CPage;->mIndex:I

    .line 63
    iput p1, p0, Lcom/app/common/bll/CPage;->mP:I

    .line 64
    iput p2, p0, Lcom/app/common/bll/CPage;->mPagesize:I

    .line 65
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .parameter "p"
    .parameter "pagesize"
    .parameter "total"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/app/common/bll/CPage;->mP:I

    .line 21
    const/16 v0, 0x14

    iput v0, p0, Lcom/app/common/bll/CPage;->mPagesize:I

    .line 26
    iput v1, p0, Lcom/app/common/bll/CPage;->mTotal:I

    .line 30
    iput-boolean v1, p0, Lcom/app/common/bll/CPage;->mIsnextpage:Z

    .line 35
    iput v1, p0, Lcom/app/common/bll/CPage;->mIndex:I

    .line 68
    iput p1, p0, Lcom/app/common/bll/CPage;->mP:I

    .line 69
    iput p2, p0, Lcom/app/common/bll/CPage;->mPagesize:I

    .line 70
    iput p3, p0, Lcom/app/common/bll/CPage;->mTotal:I

    .line 71
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInParamsStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "p="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/app/common/bll/CPage;->getP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/app/common/bll/CPage;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pagesize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/app/common/bll/CPage;->getPagesize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/app/common/bll/CPage;->mIndex:I

    return v0
.end method

.method public getIsnextpage()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/app/common/bll/CPage;->mIsnextpage:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/app/common/bll/CPage;->mP:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getP()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/app/common/bll/CPage;->mP:I

    return v0
.end method

.method public getPagesize()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/app/common/bll/CPage;->mPagesize:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/app/common/bll/CPage;->mTotal:I

    return v0
.end method

.method public getTotalNow()I
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/app/common/bll/CPage;->getTotal()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/app/common/bll/CPage;->getPagesize()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasNextPage()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/app/common/bll/CPage;->mIsnextpage:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/app/common/bll/CPage;->mP:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/app/common/bll/CPage;->mP:I

    .line 151
    iput-boolean v0, p0, Lcom/app/common/bll/CPage;->mIsnextpage:Z

    .line 152
    iput v0, p0, Lcom/app/common/bll/CPage;->mTotal:I

    .line 153
    iput v0, p0, Lcom/app/common/bll/CPage;->mIndex:I

    .line 154
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 121
    iput p1, p0, Lcom/app/common/bll/CPage;->mIndex:I

    .line 122
    return-void
.end method

.method public setIsnextpage(Z)V
    .locals 0
    .parameter "isnextpage"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/app/common/bll/CPage;->mIsnextpage:Z

    .line 42
    return-void
.end method

.method public setP(I)V
    .locals 0
    .parameter "p"

    .prologue
    .line 77
    iput p1, p0, Lcom/app/common/bll/CPage;->mP:I

    .line 78
    return-void
.end method

.method public setPagesize(I)V
    .locals 0
    .parameter "pagesize"

    .prologue
    .line 91
    iput p1, p0, Lcom/app/common/bll/CPage;->mPagesize:I

    .line 92
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .parameter "total"

    .prologue
    .line 106
    iput p1, p0, Lcom/app/common/bll/CPage;->mTotal:I

    .line 107
    return-void
.end method
