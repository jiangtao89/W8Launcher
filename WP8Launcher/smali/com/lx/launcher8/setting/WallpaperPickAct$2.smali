.class Lcom/lx/launcher8/setting/WallpaperPickAct$2;
.super Ljava/lang/Object;
.source "WallpaperPickAct.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/WallpaperPickAct;->getDynWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/lx/launcher8/setting/WallpaperPickAct;

.field private final synthetic val$mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/WallpaperPickAct;Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/WallpaperPickAct$2;->this$0:Lcom/lx/launcher8/setting/WallpaperPickAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/WallpaperPickAct$2;->val$mPackageManager:Landroid/content/pm/PackageManager;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct$2;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .parameter "info1"
    .parameter "info2"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct$2;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/lx/launcher8/setting/WallpaperPickAct$2;->val$mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/lx/launcher8/setting/WallpaperPickAct$2;->val$mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 201
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/setting/WallpaperPickAct$2;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
