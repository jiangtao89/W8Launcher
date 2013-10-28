.class public Lcom/lx/launcher8/setting/bean/TypeInfo;
.super Ljava/lang/Object;
.source "TypeInfo.java"

# interfaces
.implements Lcom/lx/launcher8/setting/bean/VO;


# static fields
.field private static final serialVersionUID:J = 0x3c5e140b3b48c1faL


# instance fields
.field private classid:I

.field private classname:Ljava/lang/String;

.field private imgurl:Ljava/lang/String;

.field private nums:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->classid:I

    .line 9
    iput-object v1, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->classname:Ljava/lang/String;

    .line 11
    iput v0, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->nums:I

    .line 13
    iput-object v1, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->imgurl:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getClassid()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->classid:I

    return v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getImgurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->imgurl:Ljava/lang/String;

    return-object v0
.end method

.method public getNums()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->nums:I

    return v0
.end method

.method public setClassid(I)V
    .locals 0
    .parameter "classid"

    .prologue
    .line 20
    iput p1, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->classid:I

    .line 21
    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->classname:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setImgurl(Ljava/lang/String;)V
    .locals 0
    .parameter "imgurl"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->imgurl:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setNums(I)V
    .locals 0
    .parameter "nums"

    .prologue
    .line 36
    iput p1, p0, Lcom/lx/launcher8/setting/bean/TypeInfo;->nums:I

    .line 37
    return-void
.end method
