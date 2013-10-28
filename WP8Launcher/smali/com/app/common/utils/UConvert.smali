.class public Lcom/app/common/utils/UConvert;
.super Ljava/lang/Object;
.source "UConvert.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static ByteToFitFormat(J)Ljava/lang/String;
    .locals 8
    .parameter "lByteSize"

    .prologue
    .line 140
    const-wide/16 v2, 0x400

    .line 141
    .local v2, kb:J
    const-wide/32 v4, 0x100000

    .line 142
    .local v4, mb:J
    const-wide/32 v0, 0x40000000

    .line 143
    .local v0, gb:J
    cmp-long v6, p0, v0

    if-ltz v6, :cond_0

    .line 144
    invoke-static {p0, p1}, Lcom/app/common/utils/UConvert;->ByteToGB(J)Ljava/lang/String;

    move-result-object v6

    .line 150
    :goto_0
    return-object v6

    .line 145
    :cond_0
    cmp-long v6, p0, v4

    if-ltz v6, :cond_1

    .line 146
    invoke-static {p0, p1}, Lcom/app/common/utils/UConvert;->ByteToMB(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 147
    :cond_1
    cmp-long v6, p0, v2

    if-ltz v6, :cond_2

    .line 148
    invoke-static {p0, p1}, Lcom/app/common/utils/UConvert;->ByteToKB(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 150
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static ByteToGB(J)Ljava/lang/String;
    .locals 7
    .parameter "lByteSize"

    .prologue
    .line 129
    long-to-double v3, p0

    const-wide/high16 v5, 0x41d0

    div-double v1, v3, v5

    .line 130
    .local v1, mb:D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, doubleFormat:Ljava/text/NumberFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "GB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static ByteToKB(J)Ljava/lang/String;
    .locals 7
    .parameter "lByteSize"

    .prologue
    .line 113
    long-to-double v3, p0

    const-wide/high16 v5, 0x4090

    div-double v1, v3, v5

    .line 114
    .local v1, mb:D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, doubleFormat:Ljava/text/NumberFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static ByteToMB(J)Ljava/lang/String;
    .locals 7
    .parameter "lByteSize"

    .prologue
    .line 123
    long-to-double v3, p0

    const-wide/high16 v5, 0x4130

    div-double v1, v3, v5

    .line 124
    .local v1, mb:D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, doubleFormat:Ljava/text/NumberFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static ToLong(Ljava/lang/String;)J
    .locals 2
    .parameter "value"

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/UConvert;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ToProgressStr(II)Ljava/lang/String;
    .locals 5
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/app/common/utils/UConvert;->toProgress(II)D

    move-result-wide v1

    .line 98
    .local v1, progress:D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.0"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, doubleFormat:Ljava/text/NumberFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static ToProgressStr(IID)Ljava/lang/String;
    .locals 5
    .parameter "numerator"
    .parameter "denominator"
    .parameter "max"

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/app/common/utils/UConvert;->toProgress(II)D

    move-result-wide v1

    .line 104
    .local v1, progress:D
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 105
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.0"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, doubleFormat:Ljava/text/NumberFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "value"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/app/common/utils/UConvert;->toDateTime(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toDateTime(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .parameter "value"
    .parameter "defalutValue"

    .prologue
    .line 64
    :try_start_0
    const-string v1, "yyyy-MM-dd hh:mm:ss"

    .line 65
    .local v1, fmt:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    .end local v1           #fmt:Ljava/lang/String;
    .end local v2           #sdf:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v3

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 73
    goto :goto_0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "value"

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/UConvert;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 1
    .parameter "value"
    .parameter "defalutValue"

    .prologue
    .line 51
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 55
    .end local p1
    :goto_0
    return-wide p1

    .line 52
    .restart local p1
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "value"
    .parameter "defalutValue"

    .prologue
    .line 20
    invoke-static {p0}, Lcom/app/common/utils/URegex;->IsNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    .end local p1
    :goto_0
    return p1

    .line 23
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "value"
    .parameter "defalutValue"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/app/common/utils/URegex;->IsNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    .end local p1
    :goto_0
    return-wide p1

    .line 38
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static toProgress(II)D
    .locals 4
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const-wide/16 v0, 0x0

    .line 84
    :goto_0
    return-wide v0

    :cond_0
    int-to-double v0, p0

    int-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static urlToFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    .line 161
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 165
    :cond_1
    const-string v0, "www."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 169
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    const-string v2, "-"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
