.class public Lcom/lx/launcher8/util/UrlPath;
.super Ljava/lang/Object;
.source "UrlPath.java"


# static fields
.field private static final BASE_PATH:Ljava/lang/String; = "http://client.anall.cn/wp8/"

.field private static final BASE_PATH_M:Ljava/lang/String; = "http://client.anall.cn/market/"

.field public static final CHECK_VS_URL:Ljava/lang/String; = "http://client.anall.cn/market/AppCheck.aspx"

.field public static final ENGINE_URL:Ljava/lang/String; = "http://client.anall.cn/wp8/EngineList.aspx"

.field public static final LOCKSCREEN_WALLPAPER_LIST_PATH:Ljava/lang/String; = "http://client.anall.cn/wp8/PicList.aspx"

.field public static final LOCKSCREEN_WALLPAPER_SEARCH_KEY_LIST_PATH:Ljava/lang/String; = "http://client.anall.cn/wp8/SearchKey.aspx"

.field public static final LOCKSCREEN_WALLPAPER_TYPE_LIST_PATH:Ljava/lang/String; = "http://client.anall.cn/wp8/PicClass.aspx"

.field public static final NAV_URL:Ljava/lang/String; = "http://client.anall.cn/wp8/UrlList.aspx"

.field public static final SHARE_URL:Ljava/lang/String; = "http://client.anall.cn/wp8/ShareUrl.aspx"

.field public static final THEME_CATE_LIST:Ljava/lang/String; = "http://client.anall.cn/wp8/ThemeClass.aspx"

.field public static final THEME_DETAIL:Ljava/lang/String; = "http://client.anall.cn/wp8/ThemeDetail.aspx"

.field public static final THEME_LIST:Ljava/lang/String; = "http://client.anall.cn/wp8/ThemeList.aspx"

.field public static final TOP_APP_CATE:Ljava/lang/String; = "http://client.anall.cn/wp8/TopAppCate.aspx"

.field public static final TOP_APP_DETAIL:Ljava/lang/String; = "http://client.anall.cn/wp8/TopAppDetail.aspx"

.field public static final TOP_APP_LIST:Ljava/lang/String; = "http://client.anall.cn/wp8/TopAppList.aspx"

.field public static final TOP_APP_SEARCH:Ljava/lang/String; = "http://client.anall.cn/wp8/SearchList.aspx"

.field public static final WP_AD_URL:Ljava/lang/String; = "http://client.anall.cn/wp8/Ad.aspx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefEngine(II)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "def"

    .prologue
    const/4 v1, 0x1

    .line 61
    if-gez p0, :cond_0

    .line 62
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/AnallApp;->getFromId()I

    move-result p0

    .line 64
    :cond_0
    if-ne p0, v1, :cond_1

    .line 65
    const-string v0, "http://wap.baidu.com/s?vit=uni&from=796b_w1&word="

    .line 70
    :goto_0
    return-object v0

    .line 67
    :cond_1
    if-ne p1, v1, :cond_2

    .line 68
    const-string v0, "http://www.google.com.hk/m/search?hl=zh-CN&q="

    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "http://m.v9.com/web/?from=mdd-lexun&type=navserach&q="

    goto :goto_0
.end method
