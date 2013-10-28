.class public abstract Lcom/lx/launcher8/cfg/BaseSetting;
.super Ljava/lang/Object;
.source "BaseSetting.java"

# interfaces
.implements Lcom/lx/launcher8/db/ThemeHelper$Saveable;


# static fields
.field public static final KEY_REQUEST_CHECKED:Ljava/lang/String; = "last_check_time"

.field public static final KEY_REQUEST_STATICTICS:Ljava/lang/String; = "last_statictics_time"

.field public static final KEY_SEARCH_DEF:Ljava/lang/String; = "search_def"

.field public static final KEY_THEME_COLOR:Ljava/lang/String; = "ThemeColor"

.field public static final KEY_THEME_PAPER:Ljava/lang/String; = "ThemeWallPaper"

.field public static final KEY_WP_AD:Ljava/lang/String; = "wp_ad"


# instance fields
.field protected mPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/cfg/BaseSetting;->mPreference:Landroid/content/SharedPreferences;

    .line 20
    return-void
.end method


# virtual methods
.method public final getLastNetCheck()J
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/cfg/BaseSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "last_check_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastStatistics()J
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lx/launcher8/cfg/BaseSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "last_statictics_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSearchDef()I
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/cfg/BaseSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "search_def"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getThemeColor()I
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/cfg/BaseSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "ThemeColor"

    const v2, -0xff4811

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getThemePaper()I
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/cfg/BaseSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "ThemeWallPaper"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getWpAd(I)Ljava/lang/String;
    .locals 3
    .parameter "pos"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/cfg/BaseSetting;->mPreference:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wp_ad"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSearchDef(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/cfg/BaseSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "search_def"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public setWpAd(ILjava/lang/String;)V
    .locals 3
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/cfg/BaseSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wp_ad"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method
