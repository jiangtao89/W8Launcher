.class Lcom/anall/statusbar/StatusBarListen$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "StatusBarListen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/StatusBarListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mInflater:Landroid/view/LayoutInflater;

.field mThemeColor:I

.field mTouchListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

.field final synthetic this$0:Lcom/anall/statusbar/StatusBarListen;


# direct methods
.method public constructor <init>(Lcom/anall/statusbar/StatusBarListen;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "color"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 262
    new-instance v0, Lcom/anall/statusbar/StatusBarListen$AppAdapter$1;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/StatusBarListen$AppAdapter$1;-><init>(Lcom/anall/statusbar/StatusBarListen$AppAdapter;)V

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 295
    new-instance v0, Lcom/anall/statusbar/StatusBarListen$AppAdapter$2;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/StatusBarListen$AppAdapter$2;-><init>(Lcom/anall/statusbar/StatusBarListen$AppAdapter;)V

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mTouchListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    .line 186
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 187
    iput p3, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mThemeColor:I

    .line 188
    return-void
.end method

.method static synthetic access$0(Lcom/anall/statusbar/StatusBarListen$AppAdapter;)Lcom/anall/statusbar/StatusBarListen;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/anall/statusbar/StatusBarListen;->access$3(Lcom/anall/statusbar/StatusBarListen;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/anall/statusbar/StatusBarListen;->access$3(Lcom/anall/statusbar/StatusBarListen;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/anall/statusbar/StatusBarListen;->access$3(Lcom/anall/statusbar/StatusBarListen;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 208
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, holder:Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 215
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030032

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 216
    new-instance v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;

    .end local v1           #holder:Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;-><init>(Lcom/anall/statusbar/StatusBarListen$AppAdapter;)V

    .line 217
    .restart local v1       #holder:Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;
    const v3, 0x7f0900e3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 218
    const v3, 0x7f0900e4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 219
    const v3, 0x7f0900e5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->seekButton:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 220
    const v3, 0x7f0900e7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->statuCb:Landroid/widget/CheckBox;

    .line 221
    const v3, 0x7f0900e8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->toastCb:Landroid/widget/CheckBox;

    .line 222
    const v3, 0x7f0900e9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->tileCb:Landroid/widget/CheckBox;

    .line 223
    const v3, 0x7f0900ea

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->lockCb:Landroid/widget/CheckBox;

    .line 224
    const v3, 0x7f0900e6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->checkLayout:Landroid/view/View;

    .line 225
    iget-object v6, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->isWhite:Z
    invoke-static {v3}, Lcom/anall/statusbar/StatusBarListen;->access$4(Lcom/anall/statusbar/StatusBarListen;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, -0x100

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->seekButton:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mTouchListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 227
    iget-object v6, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->seekButton:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->isWhite:Z
    invoke-static {v3}, Lcom/anall/statusbar/StatusBarListen;->access$4(Lcom/anall/statusbar/StatusBarListen;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    :goto_1
    invoke-virtual {v6, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 228
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->seekButton:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFocusableInTouchMode(Z)V

    .line 229
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->seekButton:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget v6, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mThemeColor:I

    invoke-virtual {v3, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 230
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->seekButton:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFocusable(Z)V

    .line 231
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->statuCb:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->toastCb:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->tileCb:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->lockCb:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->statuCb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 236
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->toastCb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 237
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->tileCb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 238
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->lockCb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 239
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 242
    :goto_2
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/anall/statusbar/StatusBarListen;->access$3(Lcom/anall/statusbar/StatusBarListen;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/statusbar/StatusBarListen$App;

    .line 243
    .local v0, app:Lcom/anall/statusbar/StatusBarListen$App;
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/anall/statusbar/StatusBarListen$App;->draw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/anall/statusbar/StatusBarListen$App;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iput-object v0, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->app:Lcom/anall/statusbar/StatusBarListen$App;

    .line 247
    iget-object v3, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    invoke-static {v3}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v3

    iget-object v6, v0, Lcom/anall/statusbar/StatusBarListen$App;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/anall/statusbar/AppListen;->get(Ljava/lang/String;)I

    move-result v2

    .line 248
    .local v2, value:I
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->checkLayout:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v6, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->statuCb:Landroid/widget/CheckBox;

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    iget-object v6, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->toastCb:Landroid/widget/CheckBox;

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_4

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 251
    iget-object v6, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->tileCb:Landroid/widget/CheckBox;

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_5

    move v3, v4

    :goto_5
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 252
    iget-object v6, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->lockCb:Landroid/widget/CheckBox;

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_6

    move v3, v4

    :goto_6
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 253
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->seekButton:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    if-eqz v2, :cond_7

    :goto_7
    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 254
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->seekButton:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v3, v1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setTag(Ljava/lang/Object;)V

    .line 255
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->statuCb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 256
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->toastCb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 257
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->tileCb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 258
    iget-object v3, v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;->lockCb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 259
    return-object p2

    .line 225
    .end local v0           #app:Lcom/anall/statusbar/StatusBarListen$App;
    .end local v2           #value:I
    :cond_0
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 227
    :cond_1
    const/16 v3, 0x14

    goto/16 :goto_1

    .line 241
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;
    check-cast v1, Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/anall/statusbar/StatusBarListen$AppAdapter$ViewHolder;
    goto/16 :goto_2

    .restart local v0       #app:Lcom/anall/statusbar/StatusBarListen$App;
    .restart local v2       #value:I
    :cond_3
    move v3, v5

    .line 249
    goto :goto_3

    :cond_4
    move v3, v5

    .line 250
    goto :goto_4

    :cond_5
    move v3, v5

    .line 251
    goto :goto_5

    :cond_6
    move v3, v5

    .line 252
    goto :goto_6

    :cond_7
    move v4, v5

    .line 253
    goto :goto_7
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/anall/statusbar/StatusBarListen;->access$3(Lcom/anall/statusbar/StatusBarListen;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/anall/statusbar/StatusBarListen;->access$3(Lcom/anall/statusbar/StatusBarListen;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/anall/statusbar/StatusBarListen;->access$3(Lcom/anall/statusbar/StatusBarListen;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->this$0:Lcom/anall/statusbar/StatusBarListen;

    iget-object v1, v1, Lcom/anall/statusbar/StatusBarListen;->mComparable:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 194
    :cond_0
    return-void
.end method
