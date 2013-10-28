.class public Lcom/lx/launcher8/download/WpPackage;
.super Ljava/lang/Object;
.source "WpPackage.java"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInstall:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/download/WpPackage;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lx/launcher8/download/WpPackage;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInstall()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/lx/launcher8/download/WpPackage;->mInstall:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lx/launcher8/download/WpPackage;->mAppName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lx/launcher8/download/WpPackage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 32
    return-void
.end method

.method public setInstall(Z)V
    .locals 0
    .parameter "install"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/lx/launcher8/download/WpPackage;->mInstall:Z

    .line 16
    return-void
.end method
