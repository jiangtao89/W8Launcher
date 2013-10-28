.class public Lcom/lx/launcher8/db/ThemeHelper$Theme;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/db/ThemeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Theme"
.end annotation


# instance fields
.field public mIndex:I

.field public mLocalPath:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mResoveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;ILjava/lang/String;)V
    .locals 0
    .parameter "info"
    .parameter "index"
    .parameter "name"

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p1, p0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mResoveInfo:Landroid/content/pm/ResolveInfo;

    .line 659
    iput p2, p0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mIndex:I

    .line 660
    iput-object p3, p0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mName:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "name"

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p1, p0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mLocalPath:Ljava/lang/String;

    .line 654
    iput-object p2, p0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mName:Ljava/lang/String;

    .line 655
    return-void
.end method


# virtual methods
.method public getCacheName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lx/launcher8/db/ThemeHelper$Theme;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "defalt"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mResoveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mResoveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
