.class public Lcom/lx/launcher8/bean/FolderCell;
.super Lcom/lx/launcher8/bean/AppCell;
.source "FolderCell.java"


# instance fields
.field public contains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/AppCell;",
            ">;"
        }
    .end annotation
.end field

.field public folder_style:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x18003

    invoke-direct {p0, v0}, Lcom/lx/launcher8/bean/FolderCell;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lx/launcher8/bean/AppCell;-><init>(I)V

    .line 17
    const/4 v0, 0x7

    iput v0, p0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getContains(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 9
    .parameter "act"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/AppCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v5}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v5

    iget-object v5, v5, Lcom/anall/app/bean/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 103
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v5, p0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 113
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    :cond_1
    iget-object v5, p0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    return-object v5

    .line 103
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/AppCell;

    .line 104
    .local v0, appCell:Lcom/lx/launcher8/bean/AppCell;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/app/bean/AppInfo;

    .line 105
    .local v1, appInfo:Lcom/anall/app/bean/AppInfo;
    iget-object v7, v1, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 106
    .local v2, cn1:Landroid/content/ComponentName;
    iget-object v7, v0, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 107
    .local v3, cn2:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 108
    iget-object v7, p0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFolderSettings()[I
    .locals 3

    .prologue
    .line 79
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 80
    .local v0, results:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    shr-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 81
    const/4 v1, 0x1

    iget v2, p0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    shr-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 82
    const/4 v1, 0x2

    iget v2, p0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    rem-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 83
    return-object v0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/AppCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 31
    const-string v0, "widgetId"

    iget v1, p0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 41
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 36
    return-void
.end method

.method public bridge synthetic read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/AppCell;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/bean/FolderCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/FolderCell;
    .locals 4
    .parameter "dis"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/bean/AppCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/AppCell;

    .line 46
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    .line 47
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 48
    .local v2, size:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-gtz v1, :cond_0

    .line 54
    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/AppCell;-><init>()V

    .line 50
    .local v0, cell:Lcom/lx/launcher8/bean/AppCell;
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    iput v3, v0, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/lx/launcher8/bean/AppCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/AppCell;

    .line 52
    iget-object v3, p0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic read(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/bean/FolderCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v0

    return-object v0
.end method

.method public setFolderSettings([I)V
    .locals 2
    .parameter "items"

    .prologue
    .line 87
    const/4 v0, 0x0

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    .line 88
    return-void
.end method

.method public setValue(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/AppCell;->setValue(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 93
    instance-of v1, p1, Lcom/lx/launcher8/bean/FolderCell;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 94
    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    .line 95
    .local v0, fc:Lcom/lx/launcher8/bean/FolderCell;
    iget v1, v0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    iput v1, p0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    .line 96
    iget-object v1, v0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    .line 98
    .end local v0           #fc:Lcom/lx/launcher8/bean/FolderCell;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/lx/launcher8/bean/AppCell;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " FolderCell(folder_style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 4
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/AppCell;->write(Ljava/io/DataOutput;)V

    .line 60
    iget v2, p0, Lcom/lx/launcher8/bean/FolderCell;->folder_style:I

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 61
    iget-object v2, p0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 62
    .local v1, size:I
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 63
    if-lez v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/AppCell;

    .line 65
    .local v0, ac:Lcom/lx/launcher8/bean/AppCell;
    invoke-virtual {v0, p1}, Lcom/lx/launcher8/bean/AppCell;->write(Ljava/io/DataOutput;)V

    goto :goto_0
.end method
