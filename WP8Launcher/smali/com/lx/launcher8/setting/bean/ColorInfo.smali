.class public Lcom/lx/launcher8/setting/bean/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private colorName:Ljava/lang/String;

.field private colorValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/ColorInfo;->colorName:Ljava/lang/String;

    return-object v0
.end method

.method public getColorValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/lx/launcher8/setting/bean/ColorInfo;->colorValue:I

    return v0
.end method

.method public setColorName(Ljava/lang/String;)V
    .locals 0
    .parameter "colorName"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/ColorInfo;->colorName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setColorValue(I)V
    .locals 0
    .parameter "colorValue"

    .prologue
    .line 23
    iput p1, p0, Lcom/lx/launcher8/setting/bean/ColorInfo;->colorValue:I

    .line 24
    return-void
.end method
