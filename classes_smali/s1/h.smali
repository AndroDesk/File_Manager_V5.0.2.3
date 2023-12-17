.class public final Ls1/h;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public static a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ls1/h$a;->a:[I

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 13
    packed-switch v0, :pswitch_data_138

    .line 16
    goto/16 :goto_136

    .line 18
    :pswitch_11  #0x7, 0x8, 0x9, 0xa
    new-instance p0, Lorg/json/JSONException;

    .line 20
    const-string v0, "Meet EOF when json not end."

    .line 22
    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    :pswitch_19  #0x6
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 29
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 31
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    .line 33
    if-ne v0, v1, :cond_27

    .line 35
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    .line 38
    goto/16 :goto_136

    .line 40
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    const-string v1, "Expected null but was "

    .line 44
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v1

    .line 48
    iget-object p0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0

    .line 61
    :pswitch_3c  #0x5
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 64
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 66
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 68
    if-eq v0, v1, :cond_61

    .line 70
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    .line 72
    if-ne v0, v1, :cond_4a

    .line 74
    goto :goto_61

    .line 75
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 77
    const-string v1, "Expected a string but was "

    .line 79
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    throw v0

    .line 98
    :cond_61
    :goto_61
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    .line 103
    goto/16 :goto_137

    .line 105
    :pswitch_68  #0x4
    :try_start_68
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->k()I

    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object p0
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_70} :catch_73

    .line 113
    :goto_70
    move-object v0, p0

    .line 114
    goto/16 :goto_137

    .line 116
    :catch_73
    :try_start_73
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->l()J

    .line 119
    move-result-wide v0

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    move-result-object p0
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_7b} :catch_7c

    .line 124
    goto :goto_70

    .line 125
    :catch_7c
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 128
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 130
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 132
    if-eq v0, v1, :cond_9f

    .line 134
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    .line 136
    if-ne v0, v1, :cond_8a

    .line 138
    goto :goto_9f

    .line 139
    :cond_8a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 141
    const-string v1, "Expected a double but was "

    .line 143
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    move-result-object v1

    .line 147
    iget-object p0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 149
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object p0

    .line 156
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    throw v0

    .line 160
    :cond_9f
    :goto_9f
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 162
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 165
    move-result-wide v0

    .line 166
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 172
    move-result-object p0

    .line 173
    goto :goto_70

    .line 174
    :pswitch_ad  #0x3
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 177
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 179
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    .line 181
    if-ne v0, v1, :cond_c7

    .line 183
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 185
    const-string v1, "true"

    .line 187
    if-ne v0, v1, :cond_be

    .line 189
    const/4 v0, 0x1

    .line 190
    goto :goto_bf

    .line 191
    :cond_be
    const/4 v0, 0x0

    .line 192
    :goto_bf
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 198
    move-result-object v0

    .line 199
    goto :goto_137

    .line 200
    :cond_c7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 202
    const-string v1, "Expected a boolean but was "

    .line 204
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    move-result-object v1

    .line 208
    iget-object p0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 210
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p0

    .line 217
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    throw v0

    .line 221
    :pswitch_dc  #0x2
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    .line 223
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->g(Lcn/kuaipan/android/utils/JsonToken;)V

    .line 226
    invoke-static {}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->obtain()Lcn/kuaipan/android/utils/ObtainabelHashMap;

    .line 229
    move-result-object v0

    .line 230
    :try_start_e5
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 233
    move-result-object v1

    .line 234
    :goto_e9
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    .line 236
    if-eq v1, v2, :cond_fd

    .line 238
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->m()Ljava/lang/String;

    .line 241
    move-result-object v1

    .line 242
    invoke-static {p0}, Ls1/h;->a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;

    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 252
    move-result-object v1

    .line 253
    goto :goto_e9

    .line 254
    :cond_fd
    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->g(Lcn/kuaipan/android/utils/JsonToken;)V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_100} :catch_106
    .catch Lorg/json/JSONException; {:try_start_e5 .. :try_end_100} :catch_101

    .line 257
    goto :goto_137

    .line 258
    :catch_101
    move-exception p0

    .line 259
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->recycle()V

    .line 262
    throw p0

    .line 263
    :catch_106
    move-exception p0

    .line 264
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->recycle()V

    .line 267
    throw p0

    .line 268
    :pswitch_10b  #0x1
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    .line 270
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->g(Lcn/kuaipan/android/utils/JsonToken;)V

    .line 273
    invoke-static {}, Lcn/kuaipan/android/utils/ObtainabelList;->obtain()Lcn/kuaipan/android/utils/ObtainabelList;

    .line 276
    move-result-object v0

    .line 277
    :try_start_114
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 280
    move-result-object v1

    .line 281
    :goto_118
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    .line 283
    if-eq v1, v2, :cond_128

    .line 285
    invoke-static {p0}, Ls1/h;->a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;

    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 295
    move-result-object v1

    .line 296
    goto :goto_118

    .line 297
    :cond_128
    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->g(Lcn/kuaipan/android/utils/JsonToken;)V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_12b} :catch_131
    .catch Lorg/json/JSONException; {:try_start_114 .. :try_end_12b} :catch_12c

    .line 300
    goto :goto_137

    .line 301
    :catch_12c
    move-exception p0

    .line 302
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelList;->recycle()V

    .line 305
    throw p0

    .line 306
    :catch_131
    move-exception p0

    .line 307
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelList;->recycle()V

    .line 310
    throw p0

    .line 311
    :goto_136
    const/4 v0, 0x0

    .line 312
    :goto_137
    return-object v0

    .line 313
    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_10b  #00000001
        :pswitch_dc  #00000002
        :pswitch_ad  #00000003
        :pswitch_68  #00000004
        :pswitch_3c  #00000005
        :pswitch_19  #00000006
        :pswitch_11  #00000007
        :pswitch_11  #00000008
        :pswitch_11  #00000009
        :pswitch_11  #0000000a
    .end packed-switch
.end method

.method public static b(Ljava/io/InputStream;)Ljava/io/Serializable;
    .registers 3

    .line 1
    new-instance v0, Lcn/kuaipan/android/utils/a;

    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 5
    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 8
    invoke-direct {v0, v1}, Lcn/kuaipan/android/utils/a;-><init>(Ljava/io/Reader;)V

    .line 11
    invoke-static {v0}, Ls1/h;->a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    .line 21
    if-ne v0, v1, :cond_17

    .line 23
    return-object p0

    .line 24
    :cond_17
    new-instance p0, Lorg/json/JSONException;

    .line 26
    const-string v0, "Document not end of EOF"

    .line 28
    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
.end method

.method public static c(Ljava/io/StringReader;)Ljava/io/Serializable;
    .registers 3

    .line 1
    new-instance v0, Lcn/kuaipan/android/utils/a;

    .line 3
    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/a;-><init>(Ljava/io/Reader;)V

    .line 6
    invoke-static {v0}, Ls1/h;->a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    .line 16
    if-ne v0, v1, :cond_12

    .line 18
    return-object p0

    .line 19
    :cond_12
    new-instance p0, Lorg/json/JSONException;

    .line 21
    const-string v0, "Document not end of EOF"

    .line 23
    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
.end method
