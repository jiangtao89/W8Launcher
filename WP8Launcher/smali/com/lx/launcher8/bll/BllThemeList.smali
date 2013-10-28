.class public Lcom/lx/launcher8/bll/BllThemeList;
.super Lcom/app/common/bll/BllXmlPull;
.source "BllThemeList.java"


# static fields
.field private static final serialVersionUID:J = 0x62426fcd174d1768L


# instance fields
.field public mThemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/bean/Theme;",
            ">;"
        }
    .end annotation
.end field

.field transient theme:Lcom/lx/launcher8/setting/bean/Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->mThemes:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method protected endTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    if-eqz v0, :cond_0

    const-string v0, "theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->mThemes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getThemeList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Z)Lcom/lx/launcher8/bll/BllThemeList;
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "page"
    .parameter "fresh"

    .prologue
    const/4 v7, 0x1

    .line 26
    invoke-static {p1}, Lcom/lx/launcher8/util/Utils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->mLanguage:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "online"

    invoke-static {v1}, Lcom/lx/launcher8/util/BasePath;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, cachepath:Ljava/lang/String;
    if-eqz p5, :cond_0

    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;ZZ)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bll/BllThemeList;

    return-object v0

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->mThemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected startTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lcom/lx/launcher8/setting/bean/Theme;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/Theme;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v0, "themeid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeList;->getTextInt()I

    move-result v1

    iput v1, v0, Lcom/lx/launcher8/setting/bean/Theme;->id:I

    goto :goto_0

    .line 38
    :cond_2
    const-string v0, "themename"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeList;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/Theme;->name:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_3
    const-string v0, "nick"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeList;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/Theme;->author:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_4
    const-string v0, "partimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeList;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/Theme;->screenUrl:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_5
    const-string v0, "lockimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/bll/BllThemeList;->theme:Lcom/lx/launcher8/setting/bean/Theme;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/BllThemeList;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/Theme;->lockUrl:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_6
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto :goto_0
.end method
