.class public Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;
.super Ljava/lang/Object;
.source "ThemeTypeView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cate"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b023356b740f2f9L


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field public summary:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "sm"

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;->id:I

    .line 293
    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;->name:Ljava/lang/String;

    .line 294
    iput p3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;->summary:I

    .line 295
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 288
    invoke-direct {p0, v0, p1, v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;-><init>(ILjava/lang/String;I)V

    .line 289
    return-void
.end method
