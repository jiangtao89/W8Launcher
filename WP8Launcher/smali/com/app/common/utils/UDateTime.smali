.class public Lcom/app/common/utils/UDateTime;
.super Ljava/lang/Object;
.source "UDateTime.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDayGap(J)I
    .locals 9
    .parameter "millis"

    .prologue
    const-wide/32 v7, 0x5265c00

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    .local v0, currentTimeMillis:J
    div-long v5, v0, v7

    long-to-int v3, v5

    .line 26
    .local v3, now:I
    div-long v5, p0, v7

    long-to-int v4, v5

    .line 27
    .local v4, sec:I
    sub-int v2, v3, v4

    .line 28
    .local v2, gap:I
    return v2
.end method

.method public static getFormatDate(J)Ljava/lang/String;
    .locals 4
    .parameter "mTimeMil"

    .prologue
    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 44
    .local v0, date:Ljava/util/Date;
    invoke-static {p0, p1}, Lcom/app/common/utils/UDateTime;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, format:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4eca\u5929 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    :goto_0
    return-object v2

    .line 47
    .end local v1           #format:Ljava/text/SimpleDateFormat;
    :cond_0
    invoke-static {p0, p1}, Lcom/app/common/utils/UDateTime;->isYesterday(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 49
    .restart local v1       #format:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6628\u5929 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 51
    .end local v1           #format:Ljava/text/SimpleDateFormat;
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 52
    .restart local v1       #format:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getNow()Ljava/lang/String;
    .locals 4

    .prologue
    .line 11
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 12
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 13
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTime(Ljava/lang/String;)J
    .locals 3
    .parameter "datetime"

    .prologue
    .line 18
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v1}, Lcom/app/common/utils/UConvert;->toDateTime(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 19
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public static isToday(J)Z
    .locals 1
    .parameter "millis"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/app/common/utils/UDateTime;->getDayGap(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isYesterday(J)Z
    .locals 2
    .parameter "millis"

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-static {p0, p1}, Lcom/app/common/utils/UDateTime;->getDayGap(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
