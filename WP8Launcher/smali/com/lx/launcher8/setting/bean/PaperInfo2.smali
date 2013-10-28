.class public Lcom/lx/launcher8/setting/bean/PaperInfo2;
.super Ljava/lang/Object;
.source "PaperInfo2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2415d4a1dd536eb8L


# instance fields
.field private paperName:Ljava/lang/String;

.field private paperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperPath:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    .line 31
    instance-of v2, p1, Lcom/lx/launcher8/setting/bean/PaperInfo2;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 32
    check-cast v0, Lcom/lx/launcher8/setting/bean/PaperInfo2;

    .line 33
    .local v0, pi:Lcom/lx/launcher8/setting/bean/PaperInfo2;
    iget-object v2, p0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperName:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 36
    .end local v0           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo2;
    :cond_0
    :goto_0
    return v1

    .line 34
    .restart local v0       #pi:Lcom/lx/launcher8/setting/bean/PaperInfo2;
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperName:Ljava/lang/String;

    iget-object v3, v0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    .end local v0           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo2;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaperName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaperPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperPath:Ljava/lang/String;

    return-object v0
.end method

.method public setPaperName(Ljava/lang/String;)V
    .locals 0
    .parameter "paperName"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setPaperPath(Ljava/lang/String;)V
    .locals 0
    .parameter "paperPath"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/PaperInfo2;->paperPath:Ljava/lang/String;

    .line 27
    return-void
.end method
