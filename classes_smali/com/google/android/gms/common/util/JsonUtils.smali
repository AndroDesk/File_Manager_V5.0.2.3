.class public final Lcom/google/android/gms/common/util/JsonUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field private static final zzhd:Ljava/util/regex/Pattern;

.field private static final zzhe:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "\\\\."

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzhd:Ljava/util/regex/Pattern;

    .line 9
    const-string v0, "[\\\\\"/\b\f\n\r\t]"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzhe:Ljava/util/regex/Pattern;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_6

    .line 4
    if-nez p1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v1, 0x0

    .line 8
    if-eqz p0, :cond_82

    .line 10
    if-nez p1, :cond_d

    .line 12
    goto/16 :goto_82

    .line 14
    :cond_d
    instance-of v2, p0, Lorg/json/JSONObject;

    .line 16
    if-eqz v2, :cond_4b

    .line 18
    instance-of v2, p1, Lorg/json/JSONObject;

    .line 20
    if-eqz v2, :cond_4b

    .line 22
    check-cast p0, Lorg/json/JSONObject;

    .line 24
    check-cast p1, Lorg/json/JSONObject;

    .line 26
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 33
    move-result v3

    .line 34
    if-eq v2, v3, :cond_24

    .line 36
    return v1

    .line 37
    :cond_24
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 40
    move-result-object v2

    .line 41
    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_4a

    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 53
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_3b

    .line 59
    return v1

    .line 60
    :cond_3b
    :try_start_3b
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 68
    invoke-static {v4, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v3
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_47} :catch_49

    .line 72
    if-nez v3, :cond_28

    .line 74
    :catch_49
    return v1

    .line 75
    :cond_4a
    return v0

    .line 76
    :cond_4b
    instance-of v2, p0, Lorg/json/JSONArray;

    .line 78
    if-eqz v2, :cond_7d

    .line 80
    instance-of v2, p1, Lorg/json/JSONArray;

    .line 82
    if-eqz v2, :cond_7d

    .line 84
    check-cast p0, Lorg/json/JSONArray;

    .line 86
    check-cast p1, Lorg/json/JSONArray;

    .line 88
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 91
    move-result v2

    .line 92
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 95
    move-result v3

    .line 96
    if-eq v2, v3, :cond_62

    .line 98
    return v1

    .line 99
    :cond_62
    move v2, v1

    .line 100
    :goto_63
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 103
    move-result v3

    .line 104
    if-ge v2, v3, :cond_7c

    .line 106
    :try_start_69
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object v4

    .line 114
    invoke-static {v3, v4}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    move-result v3
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_75} :catch_7b

    .line 118
    if-nez v3, :cond_78

    .line 120
    return v1

    .line 121
    :cond_78
    add-int/lit8 v2, v2, 0x1

    .line 123
    goto :goto_63

    .line 124
    :catch_7b
    return v1

    .line 125
    :cond_7c
    return v0

    .line 126
    :cond_7d
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result p0

    .line 130
    return p0

    .line 131
    :cond_82
    :goto_82
    return v1
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_75

    .line 7
    sget-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzhe:Ljava/util/regex/Pattern;

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_d
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_6b

    .line 20
    if-nez v1, :cond_1a

    .line 22
    new-instance v1, Ljava/lang/StringBuffer;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    :cond_1a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v2

    .line 36
    const/16 v3, 0xc

    .line 38
    if-eq v2, v3, :cond_65

    .line 40
    const/16 v3, 0xd

    .line 42
    if-eq v2, v3, :cond_5f

    .line 44
    const/16 v3, 0x22

    .line 46
    if-eq v2, v3, :cond_59

    .line 48
    const/16 v3, 0x2f

    .line 50
    if-eq v2, v3, :cond_53

    .line 52
    const/16 v3, 0x5c

    .line 54
    if-eq v2, v3, :cond_4d

    .line 56
    packed-switch v2, :pswitch_data_76

    .line 59
    goto :goto_d

    .line 60
    :pswitch_3b  #0xa
    const-string v2, "\\\\n"

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 65
    goto :goto_d

    .line 66
    :pswitch_41  #0x9
    const-string v2, "\\\\t"

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 71
    goto :goto_d

    .line 72
    :pswitch_47  #0x8
    const-string v2, "\\\\b"

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 77
    goto :goto_d

    .line 78
    :cond_4d
    const-string v2, "\\\\\\\\"

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 83
    goto :goto_d

    .line 84
    :cond_53
    const-string v2, "\\\\/"

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 89
    goto :goto_d

    .line 90
    :cond_59
    const-string v2, "\\\\\\\""

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 95
    goto :goto_d

    .line 96
    :cond_5f
    const-string v2, "\\\\r"

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 101
    goto :goto_d

    .line 102
    :cond_65
    const-string v2, "\\\\f"

    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 107
    goto :goto_d

    .line 108
    :cond_6b
    if-nez v1, :cond_6e

    .line 110
    return-object p0

    .line 111
    :cond_6e
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    :cond_75
    return-object p0

    .line 119
    :pswitch_data_76
    .packed-switch 0x8
        :pswitch_47  #00000008
        :pswitch_41  #00000009
        :pswitch_3b  #0000000a
    .end packed-switch
.end method

.method public static unescapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_89

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzd;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzhd:Ljava/util/regex/Pattern;

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_11
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_7f

    .line 24
    if-nez v1, :cond_1e

    .line 26
    new-instance v1, Ljava/lang/StringBuffer;

    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    :cond_1e
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 39
    move-result v2

    .line 40
    const/16 v3, 0x22

    .line 42
    if-eq v2, v3, :cond_79

    .line 44
    const/16 v3, 0x2f

    .line 46
    if-eq v2, v3, :cond_73

    .line 48
    const/16 v3, 0x5c

    .line 50
    if-eq v2, v3, :cond_6d

    .line 52
    const/16 v3, 0x62

    .line 54
    if-eq v2, v3, :cond_67

    .line 56
    const/16 v3, 0x66

    .line 58
    if-eq v2, v3, :cond_61

    .line 60
    const/16 v3, 0x6e

    .line 62
    if-eq v2, v3, :cond_5b

    .line 64
    const/16 v3, 0x72

    .line 66
    if-eq v2, v3, :cond_55

    .line 68
    const/16 v3, 0x74

    .line 70
    if-ne v2, v3, :cond_4d

    .line 72
    const-string v2, "\t"

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 77
    goto :goto_11

    .line 78
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 80
    const-string v0, "Found an escaped character that should never be."

    .line 82
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0

    .line 86
    :cond_55
    const-string v2, "\r"

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 91
    goto :goto_11

    .line 92
    :cond_5b
    const-string v2, "\n"

    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 97
    goto :goto_11

    .line 98
    :cond_61
    const-string v2, "\f"

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 103
    goto :goto_11

    .line 104
    :cond_67
    const-string v2, "\b"

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 109
    goto :goto_11

    .line 110
    :cond_6d
    const-string v2, "\\\\"

    .line 112
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 115
    goto :goto_11

    .line 116
    :cond_73
    const-string v2, "/"

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 121
    goto :goto_11

    .line 122
    :cond_79
    const-string v2, "\""

    .line 124
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 127
    goto :goto_11

    .line 128
    :cond_7f
    if-nez v1, :cond_82

    .line 130
    return-object p0

    .line 131
    :cond_82
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    :cond_89
    return-object p0
.end method
