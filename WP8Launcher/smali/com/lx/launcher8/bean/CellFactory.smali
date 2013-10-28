.class public Lcom/lx/launcher8/bean/CellFactory;
.super Ljava/lang/Object;
.source "CellFactory.java"


# static fields
.field public static final CELL_PROPERTY_MASK_DELETEABLE:I = 0x20000

.field public static final CELL_PROPERTY_MASK_EDITABLE:I = 0x8000

.field public static final CELL_PROPERTY_MASK_SIZEABLE:I = 0x10000

.field public static final CELL_TYPE_APP:I = 0x0

.field public static final CELL_TYPE_CONTACT:I = 0x6

.field public static final CELL_TYPE_FOLDRE:I = 0x3

.field public static final CELL_TYPE_GALLERY:I = 0x5

.field public static final CELL_TYPE_LIGHT:I = 0x20

.field public static final CELL_TYPE_LOCK:I = 0x7

.field public static final CELL_TYPE_MASK:I = 0xfff

.field public static final CELL_TYPE_MENU:I = 0x8

.field public static final CELL_TYPE_SEARCH:I = 0x80

.field public static final CELL_TYPE_SHARE:I = 0x81

.field public static final CELL_TYPE_SHORTCUT:I = 0x1

.field public static final CELL_TYPE_THEME:I = 0x9

.field public static final CELL_TYPE_TIME:I = 0x4

.field public static final CELL_TYPE_TOPAPP:I = 0x21

.field public static final CELL_TYPE_WIDGET:I = 0x2

.field public static final ICON_TYPE_BITMAP:I = 0x0

.field public static final ICON_TYPE_PATH:I = 0x1

.field static INSTANCE:Lcom/lx/launcher8/bean/CellFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lx/launcher8/bean/CellFactory;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lcom/lx/launcher8/bean/CellFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lx/launcher8/bean/CellFactory;->INSTANCE:Lcom/lx/launcher8/bean/CellFactory;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/lx/launcher8/bean/CellFactory;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/CellFactory;-><init>()V

    sput-object v0, Lcom/lx/launcher8/bean/CellFactory;->INSTANCE:Lcom/lx/launcher8/bean/CellFactory;

    .line 65
    :cond_0
    sget-object v0, Lcom/lx/launcher8/bean/CellFactory;->INSTANCE:Lcom/lx/launcher8/bean/CellFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createCellBean(I)Lcom/lx/launcher8/bean/ItemCell;
    .locals 2
    .parameter "type"

    .prologue
    .line 79
    monitor-enter p0

    and-int/lit16 v0, p1, 0xfff

    .line 80
    .local v0, baseType:I
    sparse-switch v0, :sswitch_data_0

    .line 103
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 88
    :sswitch_0
    :try_start_0
    new-instance v1, Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v1, p1}, Lcom/lx/launcher8/bean/AppCell;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 90
    :sswitch_1
    :try_start_1
    new-instance v1, Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-direct {v1, p1}, Lcom/lx/launcher8/bean/AppWidgetCell;-><init>(I)V

    goto :goto_0

    .line 92
    :sswitch_2
    new-instance v1, Lcom/lx/launcher8/bean/FolderCell;

    invoke-direct {v1, p1}, Lcom/lx/launcher8/bean/FolderCell;-><init>(I)V

    goto :goto_0

    .line 94
    :sswitch_3
    new-instance v1, Lcom/lx/launcher8/bean/TimeCell;

    invoke-direct {v1}, Lcom/lx/launcher8/bean/TimeCell;-><init>()V

    goto :goto_0

    .line 97
    :sswitch_4
    new-instance v1, Lcom/lx/launcher8/bean/DynCell;

    invoke-direct {v1, p1}, Lcom/lx/launcher8/bean/DynCell;-><init>(I)V

    goto :goto_0

    .line 99
    :sswitch_5
    new-instance v1, Lcom/lx/launcher8/bean/LightCell;

    invoke-direct {v1, p1}, Lcom/lx/launcher8/bean/LightCell;-><init>(I)V

    goto :goto_0

    .line 101
    :sswitch_6
    new-instance v1, Lcom/lx/launcher8/bean/TopAppCell;

    invoke-direct {v1, p1}, Lcom/lx/launcher8/bean/TopAppCell;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x20 -> :sswitch_5
        0x21 -> :sswitch_6
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized createCellView(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)Lcom/lx/launcher8/view/CellView;
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget v1, p2, Lcom/lx/launcher8/bean/ItemCell;->cellType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v0, v1, 0xfff

    .line 248
    .local v0, baseType:I
    sparse-switch v0, :sswitch_data_0

    .line 271
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 257
    :sswitch_0
    :try_start_1
    new-instance v1, Lcom/lx/launcher8/view/SimpleCellView;

    invoke-direct {v1, p1, p2}, Lcom/lx/launcher8/view/SimpleCellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    .end local v0           #baseType:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 259
    .restart local v0       #baseType:I
    :sswitch_1
    :try_start_2
    new-instance v1, Lcom/lx/launcher8/view/CellView;

    invoke-direct {v1, p1, p2}, Lcom/lx/launcher8/view/CellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0

    .line 261
    :sswitch_2
    new-instance v1, Lcom/lx/launcher8/view/ContactCellView;

    invoke-direct {v1, p1, p2}, Lcom/lx/launcher8/view/ContactCellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0

    .line 263
    :sswitch_3
    new-instance v1, Lcom/lx/launcher8/view/GalleryCellView;

    invoke-direct {v1, p1, p2}, Lcom/lx/launcher8/view/GalleryCellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0

    .line 265
    :sswitch_4
    new-instance v1, Lcom/lx/launcher8/view/TimeCellView;

    invoke-direct {v1, p1, p2}, Lcom/lx/launcher8/view/TimeCellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0

    .line 267
    :sswitch_5
    new-instance v1, Lcom/lx/launcher8/view/FolderCellView;

    invoke-direct {v1, p1, p2}, Lcom/lx/launcher8/view/FolderCellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0

    .line 269
    :sswitch_6
    new-instance v1, Lcom/lx/launcher8/view/TopAppCellView;

    invoke-direct {v1, p1, p2}, Lcom/lx/launcher8/view/TopAppCellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x21 -> :sswitch_6
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized createSpecialBean(Landroid/content/Context;I)Lcom/lx/launcher8/bean/ItemCell;
    .locals 8
    .parameter "context"
    .parameter "type"

    .prologue
    .line 115
    monitor-enter p0

    sparse-switch p2, :sswitch_data_0

    .line 236
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 117
    :sswitch_0
    :try_start_0
    new-instance v0, Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/AppCell;-><init>()V

    .line 118
    .local v0, appCell:Lcom/lx/launcher8/bean/AppCell;
    const v6, 0x38007

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    .line 120
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v3, it:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v6, "com.lx.launcher.lock"

    const-string v7, "com.lx.launcher.lock.LockScreen"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iput-object v3, v0, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 124
    const/4 v6, 0x1

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 125
    const-string v6, "pic/lock.png"

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    .line 126
    iget-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 127
    const v6, -0x1aec00

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    .line 128
    const/16 v6, 0x300

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->gravity:I

    .line 129
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/lx/launcher8/bean/AppCell;->setSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #appCell:Lcom/lx/launcher8/bean/AppCell;
    .end local v3           #it:Landroid/content/Intent;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 132
    :sswitch_1
    :try_start_1
    new-instance v1, Lcom/lx/launcher8/bean/DynCell;

    const v6, 0x38006

    invoke-direct {v1, v6}, Lcom/lx/launcher8/bean/DynCell;-><init>(I)V

    .line 135
    .local v1, contact:Lcom/lx/launcher8/bean/DynCell;
    const-string v6, "cell_contact"

    const-string v7, ""

    invoke-static {p1, v6, v7}, Lcom/app/common/utils/UPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lx/launcher8/bean/DynCell;->setIntent(Ljava/lang/String;)V

    .line 136
    const-string v6, "pic/contacts.png"

    invoke-static {p1, v6}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    .line 137
    const v6, 0x7f0a009d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/lx/launcher8/bean/DynCell;->title:Ljava/lang/String;

    .line 138
    const/16 v6, 0x300

    iput v6, v1, Lcom/lx/launcher8/bean/DynCell;->gravity:I

    .line 139
    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Lcom/lx/launcher8/bean/DynCell;->setSize(II)V

    move-object v0, v1

    .line 140
    goto :goto_0

    .line 142
    .end local v1           #contact:Lcom/lx/launcher8/bean/DynCell;
    :sswitch_2
    new-instance v2, Lcom/lx/launcher8/bean/DynCell;

    const v6, 0x38005

    invoke-direct {v2, v6}, Lcom/lx/launcher8/bean/DynCell;-><init>(I)V

    .line 145
    .local v2, gallery:Lcom/lx/launcher8/bean/DynCell;
    const-string v6, "cell_gallery"

    const-string v7, ""

    invoke-static {p1, v6, v7}, Lcom/app/common/utils/UPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/bean/DynCell;->setIntent(Ljava/lang/String;)V

    .line 146
    const-string v6, "pic/picture.png"

    invoke-static {p1, v6}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v2, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    .line 147
    const v6, 0x7f0a0095

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/lx/launcher8/bean/DynCell;->title:Ljava/lang/String;

    .line 148
    const/16 v6, 0x300

    iput v6, v2, Lcom/lx/launcher8/bean/DynCell;->gravity:I

    .line 149
    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Lcom/lx/launcher8/bean/DynCell;->setSize(II)V

    move-object v0, v2

    .line 150
    goto/16 :goto_0

    .line 152
    .end local v2           #gallery:Lcom/lx/launcher8/bean/DynCell;
    :sswitch_3
    new-instance v5, Lcom/lx/launcher8/bean/TimeCell;

    invoke-direct {v5}, Lcom/lx/launcher8/bean/TimeCell;-><init>()V

    .line 153
    .local v5, time:Lcom/lx/launcher8/bean/TimeCell;
    const-string v6, "cell_time"

    const-string v7, ""

    invoke-static {p1, v6, v7}, Lcom/app/common/utils/UPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/bean/TimeCell;->setIntent(Ljava/lang/String;)V

    .line 154
    const-string v6, "background/e_christmas_a02.jpg"

    invoke-static {p1, v6}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    .line 155
    const/16 v6, 0x300

    iput v6, v5, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    .line 156
    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/bean/TimeCell;->setSize(II)V

    move-object v0, v5

    .line 157
    goto/16 :goto_0

    .line 159
    .end local v5           #time:Lcom/lx/launcher8/bean/TimeCell;
    :sswitch_4
    new-instance v0, Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/AppCell;-><init>()V

    .line 160
    .restart local v0       #appCell:Lcom/lx/launcher8/bean/AppCell;
    const v6, 0x38008

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    .line 162
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v3       #it:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iput-object v3, v0, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 165
    const/4 v6, 0x0

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 166
    const v6, 0x7f0a00a0

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 167
    const-string v6, "pic/menu.png"

    invoke-static {p1, v6}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 168
    const/16 v6, 0x300

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->gravity:I

    .line 169
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/lx/launcher8/bean/AppCell;->setSize(II)V

    goto/16 :goto_0

    .line 172
    .end local v0           #appCell:Lcom/lx/launcher8/bean/AppCell;
    .end local v3           #it:Landroid/content/Intent;
    :sswitch_5
    new-instance v4, Lcom/lx/launcher8/bean/LightCell;

    invoke-direct {v4}, Lcom/lx/launcher8/bean/LightCell;-><init>()V

    .line 173
    .local v4, lightCell:Lcom/lx/launcher8/bean/LightCell;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v3       #it:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iput-object v3, v4, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    .line 176
    const/4 v6, 0x0

    iput v6, v4, Lcom/lx/launcher8/bean/LightCell;->iconType:I

    .line 177
    const v6, 0x7f0a00f6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    .line 178
    const-string v6, "pic/light.png"

    invoke-static {p1, v6}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v4, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    .line 179
    const-string v6, "pic/light_lit.png"

    invoke-static {p1, v6}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v4, Lcom/lx/launcher8/bean/LightCell;->icon2:Landroid/graphics/Bitmap;

    .line 180
    const/16 v6, 0x300

    iput v6, v4, Lcom/lx/launcher8/bean/LightCell;->gravity:I

    .line 181
    const-string v6, "0,0,0"

    iput-object v6, v4, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    .line 182
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/lx/launcher8/bean/LightCell;->setSize(II)V

    move-object v0, v4

    .line 183
    goto/16 :goto_0

    .line 185
    .end local v3           #it:Landroid/content/Intent;
    .end local v4           #lightCell:Lcom/lx/launcher8/bean/LightCell;
    :sswitch_6
    new-instance v0, Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/AppCell;-><init>()V

    .line 186
    .restart local v0       #appCell:Lcom/lx/launcher8/bean/AppCell;
    const v6, 0x38080

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    .line 188
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v3       #it:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iput-object v3, v0, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 191
    const/4 v6, 0x0

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 192
    const v6, 0x7f0a0263

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 193
    const-string v6, "pic/search.png"

    invoke-static {p1, v6}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 194
    const/16 v6, 0x300

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->gravity:I

    .line 195
    const-string v6, "1"

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    .line 196
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/lx/launcher8/bean/AppCell;->setSize(II)V

    goto/16 :goto_0

    .line 199
    .end local v0           #appCell:Lcom/lx/launcher8/bean/AppCell;
    .end local v3           #it:Landroid/content/Intent;
    :sswitch_7
    new-instance v0, Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/AppCell;-><init>()V

    .line 200
    .restart local v0       #appCell:Lcom/lx/launcher8/bean/AppCell;
    const v6, 0x38009

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    .line 202
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v3       #it:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iput-object v3, v0, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 205
    const/4 v6, 0x0

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 206
    const v6, 0x7f0a01a1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 207
    const-string v6, "pic/theme.png"

    invoke-static {p1, v6}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 208
    const/16 v6, 0x300

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->gravity:I

    .line 209
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/lx/launcher8/bean/AppCell;->setSize(II)V

    goto/16 :goto_0

    .line 212
    .end local v0           #appCell:Lcom/lx/launcher8/bean/AppCell;
    .end local v3           #it:Landroid/content/Intent;
    :sswitch_8
    new-instance v0, Lcom/lx/launcher8/bean/TopAppCell;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/TopAppCell;-><init>()V

    .line 213
    .restart local v0       #appCell:Lcom/lx/launcher8/bean/AppCell;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v3       #it:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iput-object v3, v0, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 216
    const/4 v6, 0x0

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 217
    const v6, 0x7f0a0281

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 218
    const-string v6, "pic/market_2.png"

    invoke-static {p1, v6}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 219
    const/16 v6, 0x300

    iput v6, v0, Lcom/lx/launcher8/bean/AppCell;->gravity:I

    .line 220
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/lx/launcher8/bean/AppCell;->setSize(II)V

    goto/16 :goto_0



    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_4
        0x9 -> :sswitch_7
        0x20 -> :sswitch_5
        0x21 -> :sswitch_8
        0x80 -> :sswitch_6
    .end sparse-switch
.end method
