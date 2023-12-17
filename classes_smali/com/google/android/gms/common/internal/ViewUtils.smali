.class public Lcom/google/android/gms/common/internal/ViewUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXmlAttributeString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZLjava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    if-nez p3, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_8

    .line 5
    :cond_4
    invoke-interface {p3, p0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    :goto_8
    if-eqz p0, :cond_ad

    .line 11
    const-string p3, "@string/"

    .line 13
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_ad

    .line 19
    if-eqz p4, :cond_ad

    .line 21
    const/16 p3, 0x8

    .line 23
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Landroid/util/TypedValue;

    .line 33
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 36
    :try_start_23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object p2

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 47
    move-result v2

    .line 48
    add-int/2addr v2, p3

    .line 49
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 56
    move-result p3

    .line 57
    add-int/2addr v2, p3

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, ":string/"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p3

    .line 78
    const/4 p4, 0x1

    .line 79
    invoke-virtual {p2, p3, v1, p4}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_51
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_51} :catch_52

    .line 82
    goto :goto_79

    .line 83
    :catch_52
    const/16 p2, 0x1e

    .line 85
    invoke-static {p1, p2}, La/a;->a(Ljava/lang/String;I)I

    .line 88
    move-result p2

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 92
    move-result p3

    .line 93
    add-int/2addr p3, p2

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    const-string p3, "Could not find resource for "

    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string p3, ": "

    .line 109
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p2

    .line 119
    invoke-static {p6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_79
    iget-object p2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 124
    if-eqz p2, :cond_82

    .line 126
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    goto :goto_ad

    .line 131
    :cond_82
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 135
    const/16 p3, 0x1c

    .line 137
    invoke-static {p1, p3}, La/a;->a(Ljava/lang/String;I)I

    .line 140
    move-result p3

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 144
    move-result p4

    .line 145
    add-int/2addr p4, p3

    .line 146
    new-instance p3, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    const-string p4, "Resource "

    .line 153
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string p4, " was not a string: "

    .line 161
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p2

    .line 171
    invoke-static {p6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_ad
    :goto_ad
    if-eqz p5, :cond_d0

    .line 176
    if-nez p0, :cond_d0

    .line 178
    const/16 p2, 0x21

    .line 180
    invoke-static {p1, p2}, La/a;->a(Ljava/lang/String;I)I

    .line 183
    move-result p2

    .line 184
    new-instance p3, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 189
    const-string p2, "Required XML attribute \""

    .line 191
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string p1, "\" missing"

    .line 199
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object p1

    .line 206
    invoke-static {p6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_d0
    return-object p0
.end method
